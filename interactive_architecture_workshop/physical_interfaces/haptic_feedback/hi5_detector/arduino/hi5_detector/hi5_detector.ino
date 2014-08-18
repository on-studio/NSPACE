//INTERACTIVE ARCHITECTURE WORKSHOP
//PHYSICAL INTERFACES
//*HI5 DETECTOR


// This is the Moving Average Library, install it if you haven't done it yet.
#include <MovingAvarageFilter.h>
 
MovingAvarageFilter movingAvarageFilter(20);

boolean check = false;
 
void setup() {

//Serial
Serial.begin(115200); 

}

void loop() {        

// declare input and output variables 

float input =  analogRead(0); // without a real input, looking at the step respons (input at unity, 1)

float output = 0; 

output = movingAvarageFilter.process(input);


// here we call the fir routine with the input. The value 'fir' spits out is stored in the output variable.

if (output<500) {   // you can change this parameter to fine tune the sensitivity

if (!check){ 
  
//This is where you map the keyboard key. Feel free to change it.

Keyboard.print("w");         

Serial.println(output);           

check = !check;   

  }         

  }
 
if (output>600) {     

  if (check){               

  check = !check;   

  }     

  }

}
