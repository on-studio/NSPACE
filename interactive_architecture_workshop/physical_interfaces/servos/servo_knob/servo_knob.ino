/* INTERACTIVE ARCHITECTURE WORSHOP */
/* NSPACE
/* SERVOS INTRODUCTION */
/* ALEX LEIVA */

#include <Servo.h> 

int potPin = 0;  
int servoPin = 9;
Servo servo; 
 
void setup() 
{ 
  servo.attach(servoPin);  
} 
 
void loop() 
{ 
  int reading = analogRead(potPin);     // 0 to 1023
  int angle = reading / 6;              // 0 to 180-ish
  servo.write(angle);  
} 
