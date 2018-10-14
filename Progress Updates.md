Week 4:

Joseph Bentivegna
10/2/2018 - This week I build simple architecture on a breadboard to model the functionality of one of our accelerometers. I wired a Teensy (microcontroller) to a MPU-9265 (accelerometer) and then connected both to my computer via USB.  I then followed a tutorial on how to map simple 3-degree motion from an accelerometer into the Unity engine.  I learned a lot about coding in C++ and C# and how information is passed using a serial connection between the teensy and the Unity engine. By the time of writing this update I have successfully connected the physical breadboard to a rectangular prism object in Unity which allows a user to rotate the breadboard in space and see the same motion on the rectangular object.


Luka Lipovac
10/2/2018 - Looked into both Microcontrollers the will be potentially used and communication protocols for getting data data from the 16 planned accelerometers. Decided on using STM32 series chip, either the F or H series, as they are both cheap in the quantity that we are planning on purchasing, fast, have significant documentation and support, and their development boards are readily and cheaply available. Narrowed down SPI as the best protocol to use as it required significantly less setup work per accelerometer to get it up and running, is very fast, and requires only an additional 3 traces per finger and a single 4-bit mux (if we don't decide to just use 16 pins) to get up and running. 

Varouzan Knouni
10/2/2018
Have started looking into accelerometers to use. Trying to select accelerometers with right acceleration range and sensitivity. It was decided to use SPI interface instead of I2C. Researched microcontrollers and decided on the STM32F401RET6.A STM32F401RET6 Nucleo-64 development board is available.



Week 5:

Luka Lipovac
10/8/2018 - Began converting Joseph's Teensy code for processing accelerometer data to an STM32 Nucleo development board. Also began drafting a preliminary schematic for the PCB that will be mounted on the users hand. When an accelerometer is fully decided on the schematic will be finalized. Began looking into haptic devices with the help of Jerry Qui (who is very experienced in haptics from previous work). 

Varouzan Knouni
10/8/2018 - Began learning how to use the Unity Engine. Decided on witch microcontroller to use. Started to research DC motors and servos.


Week 6:

Luka Lipovac
10/13/2017
Started and finished the pin assignment for the STM32F401RE that will be used on the glove board. The plan as of now is to use three separate SPI interfaces to communicate with the 16 planned accelerometers. 1 of the busses will control gather data from the 6 accelerometers from the pinky and ring finger, 1 will do the same for the middle and pointer finger, and the last one will do the same with the thumb, hand, and arm. The glove board will communicate with our PCs over USB full-speed (2.0) testing spatial tracking, but will eventually communicate over USART to the board housed in the on desk box that is controlling the forced feedback. The glove board MCU will be powered by USB for now too. Initial schematic design has been started and will hopefully wrap up by the end of the week.  
