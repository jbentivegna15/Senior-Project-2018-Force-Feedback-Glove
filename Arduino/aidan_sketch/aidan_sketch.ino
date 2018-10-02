//Arduino IDE, C/C++
#include "Wire.h"

#define    MPU9250_ADDRESS            0x68
#define    MAG_ADDRESS                0x0C
#define    GYRO_FULL_SCALE_250_DPS    0x00  
#define    GYRO_FULL_SCALE_500_DPS    0x08
#define    GYRO_FULL_SCALE_1000_DPS   0x10
#define    GYRO_FULL_SCALE_2000_DPS   0x18
#define    ACC_FULL_SCALE_2_G        0x00  
#define    ACC_FULL_SCALE_4_G        0x08
#define    ACC_FULL_SCALE_8_G        0x10
#define    ACC_FULL_SCALE_16_G       0x18

#define ROTATION_COMMAND 'R'

//Custom 16bit Vector3
struct Vector3
{
  int16_t x;
  int16_t y;
  int16_t z;
};

//Equality operator overloads for Vector3
//Allow us to easily compare two vector3's to see if the are equal or not. 
inline bool operator==(const Vector3& lhs, const Vector3& rhs){ if(lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z)return true; else return false; }
inline bool operator!=(const Vector3& lhs, const Vector3& rhs){ return !(lhs == rhs); }

void setup() 
{
  Wire.begin();
  Serial.begin(115200);
  // Configure gyroscope range
  I2CwriteByte(MPU9250_ADDRESS,27,GYRO_FULL_SCALE_2000_DPS);
  // Configure accelerometers range
  I2CwriteByte(MPU9250_ADDRESS,28,ACC_FULL_SCALE_16_G);
}

void I2Cread(uint8_t Address, uint8_t Register, uint8_t Nbytes, uint8_t* Data)
{
  // Set register address
  Wire.beginTransmission(Address);
  Wire.write(Register);
  Wire.endTransmission();
  
  // Read Nbytes
  Wire.requestFrom(Address, Nbytes); 
  uint8_t index=0;
  while (Wire.available())
  Data[index++]=Wire.read();
}

void I2CwriteByte(uint8_t Address, uint8_t Register, uint8_t Data)
{
  // Set register address
  Wire.beginTransmission(Address);
  Wire.write(Register);
  Wire.write(Data);
  Wire.endTransmission();
}

Vector3 lastAccl;
void SendGyroData()
{
    // Read accelerometer and gyroscope
    uint8_t Buf[14];
    I2Cread(MPU9250_ADDRESS,0x3B,14,Buf);

    Vector3 accl; //Create a vector3 to store our accl data in.
    // Accelerometer
    accl.x=-(Buf[0]<<8 | Buf[1]);
    accl.y=-(Buf[2]<<8 | Buf[3]);
    accl.z= Buf[4]<<8 | Buf[5];

    //Map the accl data to a Unity-friendly range
    accl.x = map(accl.x, -3000, 3000, -360, 360); 
    accl.y = map(accl.y, -3000, 3000, -360, 360); 
    accl.z = map(accl.z, -3000, 3000, -360, 360); 

    if(VectorDistance(accl, lastAccl) > 5) //Only send new accl data if the change is great enough.
    {
         // Accelerometer Out
        Serial.print(ROTATION_COMMAND);
        Serial.print (accl.x,DEC); 
        Serial.print (":");
        Serial.print (accl.y,DEC);
        Serial.print (":");
        Serial.print (accl.z,DEC);  
        Serial.println(""); 
        lastAccl = accl;
    }
}
float VectorDistance(Vector3 a, Vector3 b)
{
    return sqr( pow((b.x-a.x),2) + pow((b.y-a.y),2) + pow((b.z-a.z),2));
}

int sqr(int x) //Fast, but not accurate integer square root
{
    int s, t;
    s = 1;  t = x;
    while (s < t) {
        s <<= 1;
        t >>= 1;
    }
    do {
        t = s;
        s = (x / s + s) >> 1;
    } while (s < t);
    return t;
}

void loop() 
{
  SendGyroData();
  delay(16.6); //Delay to match 60 updates per second.
}
