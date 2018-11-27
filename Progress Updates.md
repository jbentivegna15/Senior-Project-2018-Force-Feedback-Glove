Week 4:

Joseph Bentivegna
10/2/2018 - This week I build simple architecture on a breadboard to model the functionality of one of our accelerometers. I wired a Teensy (microcontroller) to a MPU-9265 (accelerometer) and then connected both to my computer via USB.  I then followed a tutorial on how to map simple 3-degree motion from an accelerometer into the Unity engine.  I learned a lot about coding in C++ and C# and how information is passed using a serial connection between the teensy and the Unity engine. By the time of writing this update I have successfully connected the physical breadboard to a rectangular prism object in Unity which allows a user to rotate the breadboard in space and see the same motion on the rectangular object.


Luka Lipovac
10/2/2018 - Looked into both Microcontrollers the will be potentially used and communication protocols for getting data data from the 16 planned accelerometers. Decided on using STM32 series chip, either the F or H series, as they are both cheap in the quantity that we are planning on purchasing, fast, have significant documentation and support, and their development boards are readily and cheaply available. Narrowed down SPI as the best protocol to use as it required significantly less setup work per accelerometer to get it up and running, is very fast, and requires only an additional 3 traces per finger and a single 4-bit mux (if we don't decide to just use 16 pins) to get up and running. 

Varouzan Knouni
10/2/2018
Have started looking into accelerometers to use. Trying to select accelerometers with right acceleration range and sensitivity. It was decided to use SPI interface instead of I2C. Researched microcontrollers and decided on the STM32F401RET6.A STM32F401RET6 Nucleo-64 development board is available.



Week 5:

Joseph Bentivegna
10/8/2018 - Worked on adding functionality to my current Unity setup. Attempted to add spacial movement in addition to rotational.  Spent time learning about SPI communication interface.  Discussed the possibility of changing from Unity to Unreal Engine.

Luka Lipovac
10/8/2018 - Began converting Joseph's Teensy code for processing accelerometer data to an STM32 Nucleo development board. Also began drafting a preliminary schematic for the PCB that will be mounted on the users hand. When an accelerometer is fully decided on the schematic will be finalized. Began looking into haptic devices with the help of Jerry Qui (who is very experienced in haptics from previous work). 

Varouzan Knouni
10/8/2018 - Began learning how to use the Unity Engine. Decided on witch microcontroller to use. Started to research DC motors and servos.


Week 6:

Joseph Bentivegna
10/16/2017 - Recieved lab access to Prof. Shlayan's GPU cluster and began experimenting with VR setups in Unity and Unreal.  

Luka Lipovac
10/13/2017 - Started and finished the pin assignment for the STM32F401RE that will be used on the glove board. The plan as of now is to use three separate SPI interfaces to communicate with the 16 planned accelerometers. 1 of the busses will control gather data from the 6 accelerometers from the pinky and ring finger, 1 will do the same for the middle and pointer finger, and the last one will do the same with the thumb, hand, and arm. The glove board will communicate with our PCs over USB full-speed (2.0) testing spatial tracking, but will eventually communicate over USART to the board housed in the on desk box that is controlling the forced feedback. The glove board MCU will be powered by USB for now too. Initial schematic design has been started and will hopefully wrap up by the end of the week. 

Varouzan Knouni
10/13/2017- Researching on IMUs (Internal Measurments Unit)s. Trying to quantify the sensitivity  and range of the measurments needed for accelerometer and gyroscope measurment units. Spent a lot of time on Digikey searching and comparing parts. Read a lot of datasheets.


Week 7:

Joseph Bentivegna
10/23/2017 - Installed SteamVR Asset for Unity and began experimenting with simple tracking using HTC Vive hardware.  This is the first step on geting localized hand tracking.  All hardware will be based on relative position to existing Vive hardware.  Explored using SteamVR prefab models for hand/finger objects in Unity.  Ordered HTC Vive Tracker to use on prototype finger tracking.  

Luka Lipovac
10/20/2017 - Reasearched methods of spatial positional tracking with minimal not increasing error. Found the Vive Tracker to be a useful tool as it can be mounted on teh arm in an unobtrusive manner and used for positioning the hand in space. As for tracking finger movement in space, looked into using gyroscopes to track angular changes in joints relative to the gyroscope placed underneath the vive tracker. Will implement a two joint system in the coming week to verify that this is a viable method. 

Varouzan Knouni:
10/20/2017 -Looked into different menthods of tra=cking. Read pappers and compared methods which invlolved added math on data with methods that required minimal math on data. Namely methods that invlolded integration of acceleretioj data rejected for introducing cummulative error. Selected approach for finger tracking. That is to track relative angles between finger joints, finger to wrist and forearm to wrist for complete hand mapping. Ordered IMUs to start testing.

Week 8:

Joseph Bentivegna
10/30/2017 - Recieved HTC Vive Tracker and began testing it in Unity environment.  Tracking was very accurate when tracker was attached to hand. Researched how to determine when items are touching in Unity. 

Luka Lipovac
10/30/2017 - Cleaned, rebuilt, and reconfigured the computer we are developing on. Settled on a way to actuate the glove through the use of Electroadhesive clutches.. Got in touch with researchers from Carnegie Melon and obtained their research into this actuation method along with their work on the electrical aspect of it. Created block diagram for system along with begining the transition to the bluetooth variant of our current chip in the preliminary schematic. 

Varouzan Knouni
10/30/2017- Re-read datasheet of IMU + application notes. IMU is a programmable device which involves a lot of register that need to be set for correct operation. Figured out a preliminary register setting. Stared writting code to get data out from IMUs.

Week 9:

Joseph Bentivegna
11/6/2017 - Worked to get relative motion working in Unity. This involves tracking one static item at the core and tracking another item relative to the first.  I used the Vive tracker as the initial item and attached this to a hinged pipe.  I then used a second controller as the other item and worked to link the objects in unity such that they stayed constrained relative to eachother.

Luka Lipovac
11/6/2017 - Busy week with class and family, was not able to do much. <3

Varouzan Knouni
11/6/2017- Pulled data out from single IMU. Moved development from local IDE to mbed.com, for better collaboration. 

Week 10:

Joseph Bentivegna
11/13/2018 - Wrote about design process and individual project components.  Formatted text for poster design and updated abstract. Presented poster at poster session and worked on abstract for final paper. 

Luka Lipovac
11/20/2018 - Made poster for midterm presentation with help from Joey and Varouzan. Contacted multiple suppliers for products that we need to develop electroadhesive clutch, including Dupont for their Luxprint dielectric. Picked electric components for electroadhesive clutch and started electradhesive clutch test schematic.

Varouzan Knouni
11/20/2018 - Hooked up to IMUs on the same I2C bus and proceded in getting readings from both of them. Developed code to output data read (converted to float to match realistic values) to PC COM port in string format. Device offers limited I2C addresses so code as to be converted to use SPI instead at some point for final product. Register settings where tested, and some minor modification on sampling rate was imposed. Also worked on report outline.


