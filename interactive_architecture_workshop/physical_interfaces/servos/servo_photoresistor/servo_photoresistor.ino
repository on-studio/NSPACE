/* INTERACTIVE ARCHITECTURE WORSHOP */
/* NSPACE
/* SERVOS INTRODUCTION */
/* ALEX LEIVA */

#include <Servo.h>

//Declare Servo Motor

Servo servomotor;
// Resistor on Analog pin A1
const int photoresistor = 1;
//Motor on Digital pin 13
const int motor = 13;

int photoresistorValue = 0;

int outputValue = 0;

float nice = 0.05;
float myValue;

void setup() {

Serial.begin(9600);

servomotor.attach(motor);

}

void loop() {

photoresistorValue = analogRead(photoresistor);

myValue = float(map(photoresistorValue, 0, 100, 0, 180));

outputValue += int(myValue - outputValue) *nice;

Serial.print("sensor = ");

Serial.print(photoresistorValue);

Serial.print("\t output = ");

Serial.println(outputValue);

servomotor.write(outputValue);

delay (100);

}
