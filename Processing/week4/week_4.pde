/*
Exercise 2: This document makes a lamp that flows in a space 
- if you click the mouse is switches on/of if you drag the mouse it changes the position,
and if you press a key it changes color
 
 Modified by Johanne Sejrskild
 COMP1000 2025
 */

float x;
float y;
float dx;
float dy;
boolean isOn = false;
color lampColor = color(200, 255, 220);
int diameter = 80;
float distance_check;

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
  dx = random(-2, 2);
  dy = random(-2, 2);
}

void draw() {
  background(80, 50, 100);
  noStroke();

  // Exercise 2: Make a rectangle (yellow) and vertical lines to it
  fill(255, 255, 100);
  rect(0, 0, width, 80);
  stroke(200, 200, 100);
  strokeWeight(2);
  for (int lineX = 10; lineX < width; lineX = lineX + 20) {
    line(lineX, 0, lineX, 80);
  }
  for (int lineY = 0; lineY < 80; lineY = lineY + 20) {
    line(0, lineY, width, lineY);
  }

  // Exercise 4: Add horizontal stripes.

  // Exercise 2: Write on if the button is on or off if its off
  textSize(60);
  fill(100);
  if (isOn) {
    text("ON", width/2-40, 60);
  } else {
    text("OFF", width/2-40, 60);
  }

  // Exercise 2: Change the lampcolor if the boolean is "on"
  noStroke();
  if (isOn) {
    fill(lampColor);
    // Exercise 7: Add rays of light
  } else {
    fill(0);
  }

  ellipse(x, y, diameter, diameter);

  // Exercise 2: Bounce back - the 80 in line 71 is the rectangle in the top
  if (x > width - diameter/2) {
    dx = -dx;
  }

  if (x < diameter/2) {
    dx = -dx;
  }

  if (y > width - diameter/2) {
    dy = -dy;
  }

  if (y < 80 + diameter/2) { 
    dy = -dy;
  }

  // Exercise 2: Change the location
  x = x + dx;
  y = y + dy;
}

void mousePressed() {
  // Exercise 2: Changes the colour of the lamp (boolean)
  
  // Exercise 3: Only if you click the top yellow bar
  if (mouseY <= 80) {
  isOn = !isOn;
  } 
}


void mouseDragged() {
  // Exercise 2: Changes the x and y position to the place of mousepress
  
  
  // Exercise 3: Only if you click on the lamp
 distance_check = dist(mouseX, mouseY, x, y);

  if (distance_check <= 40){
  x = mouseX;
  y = mouseY;
}}

void keyPressed() {
  // Exercise 2: It changes the colour of the lamp to a random colour 
print(key);
  //Exercise 3: Only if you press key 'R' or 'r'
  float newRed = random(100, 255);
  float newGreen = random(100, 255);
  float newBlue = random(100, 255);
  
  if (key == 'r' || key == 'R'){
  lampColor = color(newRed, newGreen, newBlue);
  }
}
