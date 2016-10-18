/**
 * Random falling math symbols and floats.
 *
 * Copyright 2016 (C) Tryson Hardie.
 */



PFont f1;
int[] fsizes = {16, 32, 12, 10, 42}; // font sizes
int duration = 10; // time

Letter[] symbols = new Letter[1500];

void setup() {
  size(854, 480);

  // Create the font
  f1 = createFont("Georgia", 16);
  
  int x = 0; 
  for (; x < (symbols.length-100); x++) {
      symbols[x] = new Letter(); // random math symbols
  }
  
  for (; x < symbols.length; x++) {
      symbols[x] = new Letter(random(100)); // random floats
  }
    
  textAlign(CENTER);
}

void draw() {
  background(255);
  
  for (int i = 0 ; i < symbols.length; i++) {
      symbols[i].display(1.5);
  }
  
  //saveFrame("frames/Calc#########.jpg");
  //Use the Movie Maker program in the Tools menu to combine these images to a movie.
}

void keyPressed() {
  if(key==' ')exit();
}