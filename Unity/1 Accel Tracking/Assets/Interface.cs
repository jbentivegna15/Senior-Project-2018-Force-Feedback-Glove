//C#
using UnityEngine;
using System.Collections;
using System.IO.Ports;
using System;
using System.Linq;

public class Interface : MonoBehaviour
{
    SerialPort sp;
    string[] stringDelimiters = new string[] {":", "R",}; //Items we want to ignore in strings.
    public Transform target; //The item we want to affect with our accelerometer
    void Start()
    {
        sp = new SerialPort("COM3", 115200, Parity.None, 8, StopBits.One); //Replace "COM4" with whatever port your Arduino is on.
        sp.DtrEnable = false; //Prevent the Arduino from rebooting once we connect to it.
                              //A 10 uF cap across RST and GND will prevent this. Remove cap when programming.
        sp.ReadTimeout = 1; //Shortest possible read time out.
        sp.WriteTimeout = 1; //Shortest possible write time out.
        sp.Open();
    }

    void Update()
    {
		    string cmd = CheckForRecievedData();
		    if(cmd.StartsWith("R")) //Got a rotation command
		    {
		        Vector3 accl = ParseAccelerometerData(cmd);
		        //Smoothly rotate to the new rotation position.
		        target.transform.rotation = Quaternion.Slerp(target.transform.rotation, Quaternion.Euler(accl), Time.deltaTime * 2f);
		    }

		    if (Input.GetKeyDown(KeyCode.Escape) && sp.IsOpen)
		        sp.Close();
    }

    Vector3 lastAccData = Vector3.zero;
    Vector3 ParseAccelerometerData(string data) //Read the rotation command string and return a proper Vector3
    {
        try
        {
            string[] splitResult = data.Split(stringDelimiters, StringSplitOptions.RemoveEmptyEntries);
            int x = int.Parse(splitResult[0]);
            int y = int.Parse(splitResult[1]);
            int z = int.Parse(splitResult[2]);
            lastAccData = new Vector3(x, y, z);
            return lastAccData;
        }
        catch { Debug.Log("Malformed Serial Transmisison"); return lastAccData; }
    }

    public string CheckForRecievedData()
    {
        try //Sometimes malformed serial commands come through. We can ignore these with a try/catch.
        {
            string inData = sp.ReadLine();
            int inSize = inData.Count();
            if (inSize > 0)
            {
                Debug.Log("ARDUINO->|| " + inData + " ||MSG SIZE:" + inSize.ToString());
            }
            //Got the data. Flush the in-buffer to speed reads up.
            inSize = 0;
            sp.BaseStream.Flush();
            sp.DiscardInBuffer();
            return inData;
        }
        catch { return string.Empty; }
    }
}
