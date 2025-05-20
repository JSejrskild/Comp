float aliceX;
float aliceY;
float shipSize = 100;
float aliceSpeed = 1;

void setup() {
  size(800, 600);
  aliceX = width/2;
  aliceY = height/2;
}

void draw() {
  background(0, 0, 100);
  
  drawShip();
  move();
}

void drawShip() {
  //Exercise 2: Make a nicer space ship.
  fill(100, 100, 255);
  ellipse(aliceX, aliceY, shipSize, shipSize/2);
  fill(150,150,255);
  ellipse(aliceX, aliceY-15, shipSize/2, shipSize/4);
  fill(255, 255, 0);
  circle(aliceX, aliceY+8, 15);
  fill(255, 255, 0);
  circle(aliceX - 30, aliceY, 15);
  fill(255, 255, 0);
  circle(aliceX+30, aliceY, 15);
}

void move() { 
  if (aliceX > width+shipSize) {
    aliceX = -shipSize;
  } else   if (aliceY < -shipSize) {
     aliceX  = width+shipSize;
  }  
  aliceX += aliceSpeed;
}

void mousePressed(){
 if(dist(aliceX,aliceY,mouseX,mouseY)<shipSize/2){   
   aliceSpeed = accelerate(aliceSpeed);
 }
}

float accelerate(float speed){
  float newSpeed = speed;
  if (speed >= 12){
    newSpeed = 1;
  }
  if (speed <= 12){
    newSpeed = 2 * speed;
  }
  return newSpeed;  
}
