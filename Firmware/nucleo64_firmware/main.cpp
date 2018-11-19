#include "mbed.h"
#include "LSM6DS3.h"
#include "FunctionPointer.h"

//I2C i2c(I2C_SDA,I2C_SCL);
//LSM6DS3 lsm(PB_9,PB_8,0x6B);
LSM6DS3 lsm0(I2C_SDA,I2C_SCL,0xD6);
LSM6DS3 lsm1(I2C_SDA,I2C_SCL,0xD5);
Serial pc(PA_2, PA_3,9600);
DigitalOut led2(PA_5);
int status;
uint16_t out_buff[12];
const event_callback_t serial_callback_RX;

//void serial_callback_RX_handeler(int event){
//    if(event & Serial::SERIAL_EVENT_RX_COMPLETE){
//            led2.write(1);
//        }    
//    else{
//            led2.write(0);
//        }
//}
//
//void serial_init(void){
//    serial_callback_RX.attach(serial_callback_RX_handeler);    
//}

int main(){
    led2.write(1);
    wait(1);
    led2.write(0);
    wait(1);
    led2.write(1);
    wait(1);
    
//    write_reg_I2C(0x6B,0x18,0x38); //CTR9_XL
//    write_reg_I2C(0x6B,0x10,0x60); //CTRL1_XL 6C
//    write_reg_I2C(0x6B,0x0D,0x01); //INT1_CTR
//    write_reg_I2C(0x6B,0x15,0x10); //CTRL6_C
    lsm0.begin(LSM6DS3::G_SCALE_500DPS,LSM6DS3::A_SCALE_8G,LSM6DS3::G_ODR_833,LSM6DS3::A_ODR_833);
    lsm1.begin(LSM6DS3::G_SCALE_500DPS,LSM6DS3::A_SCALE_8G,LSM6DS3::G_ODR_833,LSM6DS3::A_ODR_833);
    while(1){      
        wait(0.3);  
        lsm0.readAccel();
        lsm0.readGyro();
        
        lsm1.readAccel();
        lsm1.readGyro();
        
//        out_buff[0]=lsm0.ax_raw;
//        out_buff[1]=lsm0.ay_raw;
//        out_buff[2]=lsm0.az_raw;
//        out_buff[3]=lsm0.gx_raw;
//        out_buff[4]=lsm0.gy_raw;
//        out_buff[5]=lsm0.gz_raw;
//        out_buff[6]=lsm1.ax_raw;
//        out_buff[7]=lsm1.ay_raw;
//        out_buff[8]=lsm1.az_raw;
//        out_buff[9]=lsm1.gx_raw;
//        out_buff[10]=lsm1.gy_raw;
//        out_buff[11]=lsm1.gz_raw;
        
        
        pc.printf("%f %f %f %f %f %f %f %f %f %f %f %f \r\n",lsm0.ax,lsm0.ay,lsm0.az,lsm0.gx,lsm0.gy,lsm0.gz,lsm1.ax,lsm1.ay,lsm1.az,lsm1.gx,lsm1.gy,lsm1.gz);
    }
}