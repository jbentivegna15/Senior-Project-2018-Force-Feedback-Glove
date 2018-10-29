using UnityEngine;
using System;
using System.Collections;
using System.IO.Ports;

public class GuiArduinoSerialScript : MonoBehaviour{
	public string COMPort = "COM6";
	
	public static bool portopen = false; //if port is open or not
	public static SerialPort _SerialPort; // = new SerialPort(COMPort, 57600); //COM port and baudrate
	
	public static bool Errorhandling = false;
	public static bool UseData = false;
	public static bool SetInputs = false;
	
	public static int updateslower = 0;
	public static int updateinterval = 4;
	
	public static bool waitingforinput = false;
	public static string incommingdata = "";
	public static string lastpressed = "";
	
	public static string[] pinConfig =
	{		
		// COPY-PASTE PIN CONFIGURATION BELOW ALSO TO ARDUINO --
		"i",  // Pin 2  'i' for in 'o' for out
		"i",  // Pin 3  'i' for in 'o' for out or 'p' for pwm
		"i",  // Pin 4  'i' for in 'o' for out
		"i",  // Pin 5  'i' for in 'o' for out or 'p' for pwm
		"i",  // Pin 6  'i' for in 'o' for out or 'p' for pwm
		"i",  // Pin 7  'i' for in 'o' for out
		"o",  // Pin 8  'i' for in 'o' for out
		"o",  // Pin 9  'i' for in 'o' for out or 'p' for pwm
		"o",  // Pin 10 'i' for in 'o' for out or 'p' for pwm
		"o",  // Pin 11 'i' for in 'o' for out or 'p' for pwm
		"o",  // Pin 12 'i' for in 'o' for out
		"o"   // Pin 13 LedPin 'i' for in 'o' for out 
	};
	
	public static int inputcount = 0;//Digital inputs
	public static int outputcount = 0;//Digital outputs
	public static int pwmcount = 0;//PWM outputs
	public static int othercount = 0;
	
	public static int[] AnalogInputs = new int[6];
	public static int[] ErrorInputs = new int[3];
	public static int[] DigitalInputs;
	
	public static char[] FromJavaToArduino;
	
	//Same length as the pinconfig, but with added room for the error-handling variables
	//Arduino only sends max 3 extra characters when outputting any error
	int[] InputSer= new int[pinConfig.Length+3];
	
	public static int countInputOutput = pinConfig.Length+3;
	
	int leftPos=500;
	
	// Start
	void Start () 
	{
		_SerialPort = new SerialPort(COMPort, 57600); //COM port and baudrate
		//start the serial connection.
		OpenConnection();
		//check how many outputs and inputs there are.
		for(int pinconfigcounter = 0; pinconfigcounter < pinConfig.Length; pinconfigcounter++){
			if(pinConfig[pinconfigcounter].Equals("o")) outputcount ++;
			if(pinConfig[pinconfigcounter].Equals("i")) inputcount ++;
			if(pinConfig[pinconfigcounter].Equals("p")) pwmcount ++;
		}
		DigitalInputs = new int[inputcount];
		FromJavaToArduino = new char[pinConfig.Length];
	}// Start
	
	//void LateUpdate () // other option for Update()
	//void FixedUpdate () // other option for Update()
	void Update ()
	{
		updateslower++;
		if(portopen && _SerialPort.IsOpen && updateslower>=updateinterval){
			askforinput();
			updateslower = 0;
		}
	}// Update	
	
	//Start the connection!
	public static void OpenConnection()
	{
		if (_SerialPort != null)
		{
			if (_SerialPort.IsOpen)
				{
					_SerialPort.Close();
					print("Closing port, because it was already open!");
				}else{
					//very important!, this opens the connection
					_SerialPort.Open();
					//sets the timeout value (how long it takes before timeout error occurs)
					//zet de timeout niet te hoog, dit vertraagd Unity enorm en kan zelfs voor crashes zorgen.
					_SerialPort.ReadTimeout = 100;
					portopen = true;
					print("Port open = "+_SerialPort.IsOpen);

					if (Errorhandling){
						print("Port open = "+_SerialPort.IsOpen);
					}
				}
		}else
		{
			if (_SerialPort.IsOpen)
			{
				print("Port is already open");
			}else
			{
				print("Port == null");
			}
		}
	}// OpenConnection
	
	//Polling the arduino
	void askforinput() 
	{
		//char[] SendToArduino= new char[] {'n'};
		if(SetInputs){
			//if (Errorhandling){
				char[] SendToArduino= new char[] {'o', ',', '1', ',', '1', ',', '1', ',', '1', ',', '1', ',', '1'};
				_SerialPort.Write(SendToArduino, 0, SendToArduino.Length);
			//}else{
				//char[] SendToArduino= new char[] {'o', ',', '0', ',', '0', ',', '0', ',', '0', ',', '0', ',', '0'};
				//_SerialPort.Write(SendToArduino, 0, SendToArduino.Length);
			//}
			//arrayprinter(SendToArduino, "SendToArduino: ");//you have to send 'o' and then all the ports to SET the outputs of the Arduino.
			//sent this to the Arduino
			//disable SetInputs
			SetInputs = false;
		}else{
			char[] SendToArduino = new char[] {'p'};
			//print("sending: "+SendToArduino.ToString()); //you have to send something to get data.
			_SerialPort.Write(SendToArduino, 0, SendToArduino.Length);
		}
		
		try{
			//Read the data coming from the arduino
			incommingdata = _SerialPort.ReadLine();
			
			if (Errorhandling){
				print("data = " + incommingdata);
			}
			UseData = true;
		}catch(Exception errorpiece){
			//only show error once....
			if(UseData){
				print("error 1: "+errorpiece);
				UseData = false;
			}
		}
		//
		//when the data doesn't seem right, or is sluggish, enable this:
		//
		/*try{
			incommingdata = _SerialPort.ReadLine();
			//print("data2 = " + incommingdata);
			print("the data needed to be pulled a second time. something is wrong.");
		}catch(Exception errorpiece2){
			//print("error 2: "+errorpiece2);
		}*/
	}
	
	//GUI button 1
	void button1(){
		if(Errorhandling) {
			Errorhandling = false;
			SetInputs = true;
			//OutputSender(int[]);
		}else{
			Errorhandling = true;
			SetInputs = true;
		}
		//print("You pressed me!");
	}
	
	void button2(){
		int[] tempsend = new int[12];
		tempsend[3] = 1;
		OutputSender(tempsend);
	}
	
	void OutputSender(int[] convertJavaOutputs){
		//FromJavaToArduino = convertJavaOutputs;
		arrayprinter(convertJavaOutputs);
		print("i:"+inputcount +", p:"+ pwmcount);
		//for(int xx = 0; xx<FromJavaToArduino.Length; xx++){
			
		//}
	}
	
	int[] AnalogReceive(){
		return AnalogInputs;
	}
	int[] DigitalReceive(){
		return DigitalInputs;
	}
	int[] ErrorReceive(){
		return ErrorInputs;
	}
	
	public void javareceiver(int portnumber, int onORoff){
		print("Port "+portnumber+" will be set to: "+onORoff);
		print("going to send mode");
	}
	
	//the GUI
	void OnGUI()
	{
		if (GUILayout.Button("Error handling is now "+Errorhandling)){
			button1();
		}
		
		if (GUILayout.Button("Send to Arduino ")){
			button2();
		}
		
		//if data has been received
		if(UseData){
			othercount = 0;
			
			string textStatus = "[Digital in]\t\t\t[Analog In]";
			if(InputSer[0] == 2999){
				textStatus = textStatus + "\t\t\t[Errorlistings]";
			}
			textStatus = textStatus+"\n\n";
			//print("length: "+pinConfig.Length.ToString());
			
			for(int serinputlooper = 0; serinputlooper < pinConfig.Length; serinputlooper++){
				//reset the array first
				if(serinputlooper < ErrorInputs.Length) ErrorInputs[serinputlooper] = 0;
				if(InputSer[serinputlooper] != 1999 && (InputSer[0] == 2999 && serinputlooper > 2)){
					//print("inputcount: "+inputcount+"-othercount: "+othercount+"  ("+(inputcount-othercount)+")  <  ("+(serinputlooper-othercount)+")  serinputlooper: "+serinputlooper+"-othercount: "+othercount+"\npinConfig.Length: "+pinConfig.Length);
					//add the Digital inputs
					if(pinConfig[serinputlooper-othercount].Equals("i") && (inputcount) >= (serinputlooper-othercount)){
						textStatus = textStatus+InputSer[serinputlooper].ToString();
						DigitalInputs[serinputlooper-othercount] = InputSer[serinputlooper];
					}
					//add the Analog inputs
					if(serinputlooper-othercount+inputcount < (inputcount*2)){
						//add Analog Input.
						textStatus = textStatus+"\t\t\t\t\t\t"+InputSer[serinputlooper-othercount+inputcount+othercount].ToString();
						AnalogInputs[serinputlooper-othercount] = InputSer[serinputlooper-othercount+inputcount+othercount];
					}
					//errorlistings
					if(serinputlooper-othercount < 2 && InputSer[0] == 2999){
						textStatus = textStatus+"\t\t\t\t\t"+InputSer[serinputlooper+1-othercount].ToString();
						ErrorInputs[serinputlooper-othercount] = InputSer[serinputlooper+1-othercount];
					}
					textStatus = textStatus+"\n";
				}else{
					othercount++;
				}
				
				//[serinputlooper]
				//pinConfig[serinputlooper]
				//inputcount = 0;//Digital inputs
			}
			//print("othercount: "+othercount);
			
			//draw a container box
			Rect rectObj=new Rect(leftPos,10,200,400);
			//set the style
			GUIStyle style = new GUIStyle();
			rectObj=new Rect(leftPos-50,10,400,400);
			
			GUI.Box(rectObj,textStatus,style);
			
			//re-initialize the variables
			InputSer = GetInOutPut();
		}
	}
	
	//Input getter for the GUI.
	int[] GetInOutPut()
	{
		int[] retValue = new int[80];
		
		if(portopen && _SerialPort.IsOpen){
			//convert the incomming data to a proper INT Array !!
			int[] converteddata = intconverter(incommingdata);
			//transfer the data from one array to the other.
			if (converteddata.Length <= countInputOutput){
				for (int n = 0; n < converteddata.Length ; n++)
				{
					retValue[n] = converteddata[n];
				}
			}else{
				print("GetInOutPut:  incommingdata is longer as expected! ("+converteddata.Length+") !<= "+countInputOutput);
				arrayprinter(converteddata, "converteddata, length:"+converteddata.Length);
			}
			//arrayprinter(retValue, "retValue");
		}
		return retValue;
	}
	
	//make sure the connection to the arduino is closed.
	void OnApplicationQuit() {
		
		if (Errorhandling){
			print("closing connection because of program exit");
		}
		_SerialPort.Close();
		portopen = false;
	}
	
	//converts the string into an INT array with seperate entries.
	int[] intconverter(string convertme){
		string[] returnarray = convertme.Split(new char[] {','});
		int spacecounter = 0;
		
		for(int a = 0; a<returnarray.Length; a++){
			//print(a+": "+returnarray[a]+" "+(returnarray[a] == string.Empty));
			//check to see how many spaces are null/""/Empty
			if(returnarray[a] == string.Empty){// || returnarray[a].Equals("") || returnarray[a] == null || returnarray[a].Equals(" ")){
				spacecounter++;
			}
		}
		
		//print("spacecounter: "+spacecounter);
		
		int[] newreturnarray = new int[returnarray.Length-spacecounter];
		if(spacecounter >0){
			//string[] newreturnarray = new string[returnarray.Length-spacecounter];
			int ac = 0;
			for(int ab = 0; ab<returnarray.Length; ab++){
				if(!(returnarray[ab] == string.Empty)){// && !(returnarray[ab].Equals("")) && !(returnarray[ab] == null)){
					//Try and parse the string into an int. if it fails, returned value is 1999 (>1024) !!
					newreturnarray[ac] = TryToParse(returnarray[ab]);
					ac++;
				}
			}
			//arrayprinter(newreturnarray, "newreturnarray");
			return newreturnarray;
		}else{
			//arrayprinter(returnarray, "returnarray");
			for(int ad = 0; ad<returnarray.Length; ad++){
				newreturnarray[ad] = TryToParse(returnarray[ad]);
			}
			return newreturnarray;
		}
	}
	
	
	//converts the string into a STRING array with seperate entries.
	string[] converter(string convertme){
		string[] returnarray = convertme.Split(new char[] {','});
		int spacecounter = 0;
		
		//check to see how many spaces are null/""/Empty
		for(int a = 0; a<returnarray.Length; a++){
			//print(a+": "+returnarray[a]+" "+(returnarray[a] == string.Empty));
			if((returnarray[a] == string.Empty)){
				spacecounter++;
			}
		}
		
		if(spacecounter >0){
			string[] newreturnarray = new string[returnarray.Length-spacecounter];
			int ac = 0;
			for(int ab = 0; ab<returnarray.Length; ab++){
				if(!(returnarray[ab] == string.Empty)){
					newreturnarray[ac] = returnarray[ab];
					ac++;
				}
			}
			//arrayprinter(newreturnarray, "newreturnarray");
			return newreturnarray;
		}else{
			//arrayprinter(returnarray, "returnarray");
			return returnarray;
		}
	}
	

	//Try and parse the string into an int. if it fails, returned value is 999 !!
	int TryToParse(string value){
		int number;
		bool result = int.TryParse(value, out number);
		if (result)
		{
			//print("Converted "+value+" to "+number);  
			return number;       
		}else
		{
			//print("Attempted conversion of "+value+" failed. Value is set to 999");
			//if (value.Equals("e")) print("Error was thrown by Arduino !"); 
			//if (!value.Equals("i")) print("Error was thrown by Arduino!, string was no number but: "+value.ToString()); 
			number = 2999;
			if (value.Equals("i"))	number = 1999;
			if (value.Equals("e")) number = 2999;
			if (value == null) value = "";
			return number;
		}
	}
	//-----------------------------------------------------------------------------------------------------------------
	//										(array)	PRINTERS
	//-----------------------------------------------------------------------------------------------------------------
	
	//print the STRING array
	void arrayprinter(string[] printme){
		string Seperator = "; ";
		string finalstring = "[";
		
		for(int o = 0; o<printme.Length; o++){
			finalstring += printme[o];
			if(o < printme.Length-1){
				finalstring += Seperator;
			}
		}
		finalstring += "]";
		print("arrayprinter: "+finalstring);
	}
	
	//print the STRING array with added string to say something extra
	void arrayprinter(string[] printme, string sayalso){
		string Seperator = "; ";
		string finalstring = "[";
		
		for(int o = 0; o<printme.Length; o++){
			finalstring += printme[o];
			if(o < printme.Length-1){
				finalstring += Seperator;
			}
		}
		finalstring += "]";
		print("arrayprinter: "+sayalso+" "+finalstring);
	}
	
	//print the CHAR array
	void arrayprinter(char[] printchar){
		string[] printme = new string[printchar.Length];
		
		for(int f =0; f<printchar.Length; f++){
			printme[f] = printchar[f].ToString();
		}
		string Seperator = "; ";
		string finalstring = "[";
		
		for(int o = 0; o<printme.Length; o++){
			finalstring += printme[o];
			if(o < printme.Length-1){
				finalstring += Seperator;
			}
		}
		finalstring += "]";
		print("char-arrayprinter: "+finalstring);
	}
	
	//print the CHAR array with added string to say something extra
	void arrayprinter(char[] printchar, string sayalso){
		string[] printme = new string[printchar.Length];
		
		for(int f =0; f<printchar.Length; f++){
			printme[f] = printchar[f].ToString();
		}
		//
		string Seperator = "; ";
		string finalstring = "[";
		
		for(int o = 0; o<printme.Length; o++){
			finalstring += printme[o];
			if(o < printme.Length-1){
				finalstring += Seperator;
			}
		}
		finalstring += "]";
		print("char-arrayprinter: "+sayalso+" "+finalstring);
	}
	
	//print the INT array
	void arrayprinter(int[] printchar){
		string[] printme = new string[printchar.Length];
		
		for(int f =0; f<printchar.Length; f++){
			printme[f] = printchar[f].ToString();
		}
		string Seperator = "; ";
		string finalstring = "[";
		
		for(int o = 0; o<printme.Length; o++){
			finalstring += printme[o];
			if(o < printme.Length-1){
				finalstring += Seperator;
			}
		}
		finalstring += "]";
		print("int-arrayprinter: "+finalstring);
	}
	
	//print the INT array with added string to say something extra
	void arrayprinter(int[] printchar, string sayalso){
		string[] printme = new string[printchar.Length];
		
		for(int f =0; f<printchar.Length; f++){
			printme[f] = printchar[f].ToString();
		}
		//
		string Seperator = "; ";
		string finalstring = "[";
		
		for(int o = 0; o<printme.Length; o++){
			finalstring += printme[o];
			if(o < printme.Length-1){
				finalstring += Seperator;
			}
		}
		finalstring += "]";
		print("int-arrayprinter: "+sayalso+" "+finalstring);
	}
	
	//print the BYTE array
	void arrayprinter(byte[] printchar){
		string[] printme = new string[printchar.Length];
		
		for(int f =0; f<printchar.Length; f++){
			printme[f] = printchar[f].ToString();
		}
		string Seperator = "; ";
		string finalstring = "[";
		
		for(int o = 0; o<printme.Length; o++){
			finalstring += printme[o];
			if(o < printme.Length-1){
				finalstring += Seperator;
			}
		}
		finalstring += "]";
		print("int-arrayprinter: "+finalstring);
	}
	
	//print the BYTE array with added string to say something extra
	void arrayprinter(byte[] printchar, string sayalso){
		string[] printme = new string[printchar.Length];
		
		for(int f =0; f<printchar.Length; f++){
			printme[f] = printchar[f].ToString();
		}
		//
		string Seperator = "; ";
		string finalstring = "[";
		
		for(int o = 0; o<printme.Length; o++){
			finalstring += printme[o];
			if(o < printme.Length-1){
				finalstring += Seperator;
			}
		}
		finalstring += "]";
		print("byte-arrayprinter: "+sayalso+" "+finalstring);
	}
}