// Week 3 

// Exercise 1
// Why is there a trail left by the moving circle?
// Why is the circle blue, considering that you set the fill color to fill(0, 0, 255); after drawing the circle?
// Because it continously draws
//int x;
//int y;

//void setup() {
//  // setup will be executed once
//  size(500, 500); 
//  background(200, 255, 150);
//  x = width/2;
//  y = height/2;
//}
//void draw() {
//  // draw will be executed forever
//  // We need to add background to avoid trail by the moving circle
//  background(255,255,255);
//  strokeWeight(3);
//  ellipse(x, y, 100, 100);
//  fill(0, 0, 255);
//  ellipse(x, y, 20, 20);
//  fill(255,255,255);
//  x = x + 1;
//}


// Exercise 2
float x;
float y;
float dx;
float dy;

void setup() {
  size(500, 500);
  x = 0.5* width;
  y = 0.5* height;
  dx = random(-2,2);
  dy = random(-2,2);
}
void draw() {
  background(200, 255, 150);
  noStroke();
  
  
  float headDiameter = width/5;
  fill(0, 0, 255);
  ellipse(x, y, headDiameter, headDiameter);
  

  float noseDiameter = headDiameter/4;
  float noseX = x;
  float noseY = y - noseDiameter/2;
  
  fill(255, 0, 0);
  ellipse(noseX, noseY, noseDiameter, noseDiameter);
 
 // bouncing of all sides
  if (x > width - headDiameter / 2 || x < headDiameter / 2) { 
    // if x is - the radius of the circle is bigger than 500 or x is smaller than the radius (outer side of circle change direction)
    dx = -dx;
  }
  if (y > height - headDiameter / 2 || y < headDiameter / 2) {
    dy = -dy;
  }

  // Move the object
  x = x + dx;
  y = y + dy;
}
