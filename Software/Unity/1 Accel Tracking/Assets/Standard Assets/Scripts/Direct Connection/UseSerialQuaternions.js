//
// Script to convert Quaternions received by Serial Comm port into rotations for the attached game object
var myGameObject : GameObject;	// the game object to which this script is attached 
var childSaber : GameObject;	// the lightSaber (must be a child of myGameObject)	
var childBlock : GameObject;	// the block (must be a child of myGameObject)	

private var lightSaberMode : boolean = false;
private var prevMode : boolean = false;		// the mode in the previous frame
private var firstTime : boolean = true;		// (we omit the light saber powerup sound on the first time)

var Cconnect;

var LocalAnalogArray;
var LocalDigitalArray;
var LocalErrorArray;

var JavaOutputArray;

var CountedInputs = 0;

var pinConfig : Array =
[
	// COPY-PASTE PIN CONFIGURATION BELOW ALSO TO ARDUINO --
	// 'i' for in 'o' for out or 'p' for pwm
	"i",  
	"i",  
	"i",  
	"i",  
	"i",  
	"i",  
	"o",  
	"o",  
	"o",  
	"o",  
	"o",  
	"o"    
];

var maxAnalog : int = 4;	// use first 4 values to compute quaternions
var ActualSignalsArray;	// actual (analog) value of the analog inputs
 
private var soundScript : soundsLightSaberScript;

// variables associated with the sound of the moving lightSaber
private var myAngle : float;	// rotation angle between frames
private var minAngle : float = 5.0f;	// degrees?
private var maxAngle : float = 10.0f;
private var minVolume : float = 0.5f;
private var maxVolume : float = 1.0f;
private var yval : float;
private var yprev : float;
private var xprev : float;
private var alpha : float = 0.99f;

function Start()
{	
//	myGameObject = GameObject.Find("actual_pivot"); 	// this is the object that will rotate
//	childSaber = GameObject.Find("actual_pivot/blue_saber");
//	childBlock = GameObject.Find("actual_pivot/toverstaf");
	soundScript = childSaber.GetComponent(soundsLightSaberScript);
		
	//set 'Cconnect' to be used as connector to the C# script.
	Cconnect = GetComponent("GuiArduinoSerialScript");
	
	//count the amount of Inputs
	for(inputcounter = 0; inputcounter < pinConfig.length; inputcounter++) if(pinConfig[inputcounter] == "i") CountedInputs++;
	
	//make all outputs empty first.
	JavaOutputArray = [0,0,0,0,0,0,0,0,0,0,0,0];
	//JavaOutputArray = [0,0,0]; //string for testing
	
	ActualSignalsArray = new float[maxAnalog];

}

function Update()
{
	//
	// Receiving the Arrays that represent the INPUTS
	//
	LocalAnalogArray = Cconnect.AnalogReceive();
	LocalDigitalArray = Cconnect.DigitalReceive();
	LocalErrorArray = Cconnect.ErrorReceive();
	
	//Cconnect.arrayprinter(LocalDigitalArray, "LocalDigitalArray:"); //prints the received arrays
	//Cconnect.arrayprinter(LocalAnalogArray, "LocalAnalogArray:"); //prints the received arrays
	
		
	//Dont use: JavaOutputArray = [8]; //this will reset the entire output array!
	//According to pinConfig, your pins are either PWM, or OUTPUTS. if pinConfig made something an INPUT, and you set that pin, NOTHING will happen.
	JavaOutputArray[2] = 282;
	JavaOutputArray[1] = 8;
	
	//make sure the variables are within bounds.
	for (i = 0; i < JavaOutputArray.Length; i++){
		if(JavaOutputArray[i] > 255){
			JavaOutputArray[i] = 255;
		}else if(JavaOutputArray[i] < 0){
			JavaOutputArray[i] = 0;
		}
	}
	
	//
	// Sending the Array to C#, after which C# sends it to the Arduino as OUTPUTS (not working yet)
	//Cconnect.OutputSender(JavaOutputArray);
	ComputeActualSignals();
	
	CheckMode();			// Check which mode: normal mode or lightSaberMode
	HandleChangeMode(); 	// This function handles the change event for the lightSaberMode
	// display the object
	UpdateObject();
}

function ComputeActualSignals() {
	// compute actual value of the analog input signals
	for (var i : int = 0; i < maxAnalog; i++) {	// using the first 4 values for quaternions
		ActualSignalsArray[i] = LocalAnalogArray[i] / 1000.0f;
	}
}

function UpdateObject(){
	var from : Transform;
	var myRotat : Quaternion;
    var speed = 0.1;
    
    from = myGameObject.transform;
    myRotat = Quaternion (ActualSignalsArray[0],-ActualSignalsArray[2], ActualSignalsArray[1], ActualSignalsArray[3]);

    // compute the angle of rotation between frames
    myAngle = Quaternion.Angle(from.rotation, myRotat);
    //Debug.Log("Angle = " + myAngle);
    ComputeMovingSound( myAngle);

    myGameObject.transform.rotation = Quaternion.Slerp (from.rotation, 
    										myRotat,   //target.transform.rotation, 
    										Time.time * speed);
}

// Check which mode is active
function CheckMode () {
	prevMode = lightSaberMode;
	if (LocalDigitalArray[0] == 0) {	// use the value of the first digital input to determine the mode
		lightSaberMode = true;
		// Debug.Log("Light saber mode");
	}
	else {
		lightSaberMode = false;
		// Debug.Log("Normal mode");
	}
}
	
// This function handles the change event for the lightSaberMode
function HandleChangeMode() {
	if (lightSaberMode && !prevMode) {	// changed to lightSaberMode = true
		childSaber.SetActiveRecursively(true);
		childBlock.active = false;
		// 
		if (!firstTime) {
			soundScript.PlayPowerUpSound();
		}
		else {
			firstTime = false;	// first time, don;'t play the sound
		}
	}
	else if (prevMode && !lightSaberMode) { // changed to lightSaberMode = false
		childSaber.SetActiveRecursively(false);
		childBlock.active = true;
		
		soundScript.StopMovingSound();	// 
	}
}	

// compute the volume of the moving lightSaber based on the speed (angle) of rotation
// (Gidi) this is not working yet ....
function ComputeMovingSound(anAngle : float) {
	var theAngle : float;
	var theVol : float;
	
	if (lightSaberMode) {
		theAngle = anAngle;
		if (theAngle < minAngle) theAngle = minAngle;
		if (theAngle > maxAngle) theAngle = maxAngle;

		// high pass filter
		yval = (alpha * yprev) + (alpha * (theAngle - xprev));
		yprev = yval;
		xprev = theAngle;
		
		// compute linear increase
		theVol = minVolume + ((theAngle - minAngle) * (maxVolume - minVolume) / (maxAngle - minAngle));
		
		// set volume
		//Debug.Log("Volume = " + theVol);
		// Gidi: next line commented out, since it is not yet working properly
		//soundScript.SetMovingSoundVolume( theVol);
	}	// else, not interesting
}