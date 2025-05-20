// Animation by Johanne 
// 24.03


//  Flower - adding a keypress
float xPos = 400; // Setting an x Position
float yPos = 400; // Setting a y Position
//boolean movingRight = true;  // Flag to track the direction
float dx;
float dy;
float distance_check;
boolean happy = true;


// Setup chunk 
void setup(){
  size(800,800);
  noStroke();
  xPos = 200;
  yPos = 200;
  dx = random(-2,2);
  dy = random(-2,2);
}

void draw(){ 
background(255);
 
// Sun when its happy
if (happy){
  fill(#FADA7A);
  circle(650,100,150);
} 
 
// Grass and stem
fill(#58AF50);
rect(0, height-80, width, 80);
fill(#58AF50);
rect(width/2, height/2, 40, height/2);

// Drawing grass using for-loop
for (int grass = 10; grass < width; grass+=20){
stroke(#58AF50);
strokeWeight(4);
line(grass, height-80, grass+8, height-100);
}
 
noStroke(); 
// Flower petals
fill(#FADA7A);// Yellow
circle(xPos, yPos-200, 150);// n
fill(#FADA7A);// Yellow
circle(xPos+100, yPos-160, 150);// ne (with = +100, height = +40)
fill(#FADA7A);// Yellow
circle(xPos+170, yPos-100, 150);// en
fill(#FADA7A);// Yellow
circle(xPos+200, yPos, 150);// e
fill(#FADA7A);// Yellow
circle(xPos+170, yPos+100, 150);// es 
fill(#FADA7A);// Yellow
circle(xPos+100, yPos+160, 150);// se
fill(#FADA7A);// Yellow
circle(xPos, yPos+200, 150);// s
fill(#FADA7A);// Yellow
circle(xPos-100, yPos+160, 150);// sv
fill(#FADA7A);// Yellow
circle(xPos-170, yPos+100, 150);// vs
fill(#FADA7A);// Yellow
circle(xPos-200, yPos, 150);// v
fill(#FADA7A);// Yellow
circle(xPos-170, yPos-100, 150);// vn
fill(#FADA7A);// Yellow
circle(xPos-100, yPos-160, 150);// nv

// The head 
fill(#F0A04B);// Orange
circle(xPos, yPos, 400);// Circle a bit higher than center

// Eyes
fill(#FCE7C8); //white
arc(xPos+80, yPos-20, 100, 160, PI, TWO_PI); // the eyes
fill(#FCE7C8); //white
arc(xPos-80, yPos-20, 100, 160, PI, TWO_PI); // the eyes
fill(#B1C29E); //sage
arc(xPos-80, yPos-20, 60, 80, PI, TWO_PI); // the eyes
fill(#B1C29E); //sage
arc(xPos+80, yPos-20, 60, 80, PI, TWO_PI); // the eyes
fill(#443627); //coffee
arc(xPos-75, yPos-20, 40, 60, PI, TWO_PI); // the eyes
fill(#443627); //coffee
arc(xPos+75, yPos-20, 40, 60, PI, TWO_PI); // the eyes

// Change emotion
if (happy == true){
  // Smile 
  fill(#EFDCAB); // cream color
  arc(xPos, yPos + 40, 180, 120, 0, PI); 
} else {
  // Frown 
  fill(#EFDCAB); // cream color
  arc(xPos, yPos + 60, 180, 120, PI, TWO_PI); 
}

if (xPos == width/2 || yPos == height/2) {
  happy = false;
}


// bouncing of all sides
  float radius = 200; // Approximate radius of the flower
  if (xPos + radius > width || xPos - radius < 0) { 
    dx = -dx;
  }
  if (yPos + radius > height-80 || yPos - radius < 0) {
    dy = -dy;
  }



// Move the object
  xPos = xPos + dx;
  yPos = yPos + dy;
  
}

// Change direction if keyPressed()
void keyPressed(){
dx = -dx;
dy = -dy;
} 

// Ability to drag and drop the animation, if the mouse is in the center circle
void mouseDragged() {
distance_check = dist(mouseX, mouseY, xPos, yPos);

  if (distance_check <= 40){
  xPos = mouseX;
  yPos = mouseY;
}}



// End of the animation
