// exercise 5
float xBozo;
float yBozo;
void setup() {
  size(500, 500);
  xBozo = width/2;
  yBozo = height/2;
}
void draw() {
  background(200, 255, 150);
  noStroke();
  
  fill(255, 0, 0);
  ellipse(xBozo, yBozo, 100, 100);
  fill(0, 0, 255);
  ellipse(xBozo, yBozo+10, 25, 25);
  fill(255,255,200);
  ellipse(xBozo-20, yBozo-20, 20, 20);
  ellipse(xBozo+20, yBozo-20, 20, 20);
  xBozo++;
}
void keyPressed(){ // If I press any key it jumps to the center
  xBozo = 250;
  yBozo = 250;
}

//void mousePressed(){ //If I press the mousepad it jumps back to (100,100)
//  xBozo = 100;
//  yBozo = 100;
//}

void mousePressed(){ //If I press the mousepad it jumps to the location of the mouse
  xBozo = mouseX;
  yBozo = mouseY;
}
