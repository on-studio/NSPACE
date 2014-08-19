//* INTERACTIVE ARCHITECTURE WORSHOP */
//*PHYSICAL INTERFACES
//*HI5 DETECTOR

//We import "Minim". Processing's audio library for the sound effect
import ddf.minim.*;

//We load an image into a variable of type PImage
PImage img_hi;
PImage img_5;

// Sound variables
Minim minim;
AudioSample slap;

//Setting up the scene
void setup() {
  size(displayWidth, displayHeight);
  frameRate(60);
  colorMode(RGB,255);
  background(0);
  smooth();
  noStroke();
  
  //We setup a sound objecta
  minim = new Minim(this);
  
    // load hi5.mp3 from the data folder
    slap = minim.loadSample( "hi5.mp3",512); //Filename and buffer size
  
  //PRELOADING THE IMAGES
  img_hi = loadImage("hi.jpg");
  img_5 = loadImage("5.jpg");
}

void draw() {

//Placing the black and white photo first.

      imageMode(CENTER); //This centers the image
      image(img_hi, displayWidth/2, displayHeight/2); //We want it full screen
   
//KEYBOARD COMMAND

//LETTER "W"
if (keyPressed) {
    if (key == 'w' || key == 'W') { //Don't forget to include both upper and lower case
      imageMode(CENTER); //This centers the image
      image(img_5, displayWidth/2, displayHeight/2);//We want it full screen
      
      //Sound trigger
      slap.trigger();
    }
}

}
