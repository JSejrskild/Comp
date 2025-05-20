// Exercise 4
float xPos = 250;
float yPos = 250;


void setup(){
  size(500,500);
  xPos = 250;
  yPos = 250;
}


void draw(){
  background(200,255,150);
  noStroke();
  
  fill(255,0,0);
  ellipse(xPos,yPos,100,100);
  
  fill(0,0,255);
  ellipse(xPos+50,yPos,50,50); 
  
  xPos = xPos + 1;
}
