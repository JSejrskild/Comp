/* COPY EVERYTHING - INCLUDING THE FINAL COMMENT TO YOUR PROCESSING IDE
 
 Live coding test 1, COMP1000 2025
 Johanne - 48920754
*/

float x;
float y;
float dx;
float dy;
boolean isOn = false;
int diameter = 100;
color lampColor = color(255, 255, 100);


void setup() {
  size(600, 400);
  x = random(0,width);
  y = random(80+diameter/2,401); // Initial position in full range with,
  // but only in the range y that results in no overlap with the top sqare
  float angle = radians(random(0, 360));
  dx = 2 * sin(angle);
  dy = 2 * cos(angle); 
}

void draw(){
  background(80,50,100);
  noStroke( );
  
  fill(255, 255, 100);
  rect(0, 0, width, 80);

  for (int offset = 0; offset < width; offset += width / 10) {
    fill(255, 255, 200);
    rect(offset, 0, width / 20, 80);
  }

  textSize(60);
  fill(100);

// Text in the top - Dispays OFF when the light is off
  if (isOn) {
    text("ON", width / 2 - 40, 60);
    fill(lampColor);
  } else {
    text("OFF", width / 2 - 40, 60);
    fill(0);
  }
  
// Drawing the circle
  stroke(255);
  strokeWeight(3);
  for (int d = diameter; d > 0; d -= diameter / 4) { //4 circles instead of 5
    circle(x, y, d);
  }

  if (x > width) {
    x = 0;
  }

  if (x < 0) {
    x = width;
  }

  if (y > height - diameter / 2) {
    dy = -dy;
  }

  if (y < 80 + diameter / 2) {
    dy = -dy;
  }

  x = x + dx;
  y = y + dy;
}

void mousePressed() {
  isOn = !isOn;
  float factor = 0.5;

  if (isOn) {
    factor = 2;
  }

  dx = factor * dx;
  dy = factor * dy;
}

/* 
  COPY EVERYTHING - INCLUDING THE FINAL COMMENT TO YOUR PROCESSING IDE 
  - THIS IS THE FINAL COMMENT 
*/
