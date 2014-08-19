/* INTERACTIVE ARCHITECTURE WORSHOP */
/* NSPACE
/* HAPTIC INTERACTION */
/* ALEX LEIVA */

PImage img_glass;
PImage img_skin1;
PImage img_skin2;
PImage img_program;


void setup() {
  size(displayWidth, displayHeight);
  frameRate(60);
  colorMode(RGB,255);
  background(0);
  smooth();
  noStroke();
  
  //PRELOADING THE IMAGES
  img_glass = loadImage("mapped_01.png");
  img_skin1 = loadImage("mapped_02.png");
  img_skin2 = loadImage("mapped_03.png");
  img_program = loadImage("mapped_04.png");
}


void draw() {
  
//Placing the black and white photo first.

      imageMode(CENTER); //This centers the image
      image(img_glass, displayWidth/2, displayHeight/2); //We want it full screen

  
//KEYBOARD COMMANDS

//LETTER "A"
if (keyPressed) {
    if (key == 'a' || key == 'A') {
      imageMode(CENTER);
      image(img_skin1, displayWidth/2, displayHeight/2);
    }
}

//LETTER "S"
if (keyPressed) {
    if (key == 's' || key == 'S') {
      imageMode(CENTER);
      image(img_skin2, displayWidth/2, displayHeight/2);
    }
}

//LETTER "D"
if (keyPressed) {
    if (key == 'd' || key == 'D') {
      imageMode(CENTER);
      image(img_program, displayWidth/2, displayHeight/2);
    }
}

}

