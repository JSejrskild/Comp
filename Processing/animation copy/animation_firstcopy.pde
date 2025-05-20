// Exercise 8 - Flowergirl - simplify an make it move
float xPos = 400; // Setting an x Position
float yPos = 400; // Setting a y Position
boolean movingRight = true;  // Flag to track the direction

// Setup chunk 
void setup(){
  size(800,800);
  noStroke();
  xPos = 400;
  yPos = 400;
}

void draw(){
  background(255); // white background
 
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

// Smile
fill(#EFDCAB); //cream
arc(xPos, yPos+40, 180, 120, 0, PI); // smile

// moving to the right
//xPos=xPos+1;

// Moving it to the right and then left - back and fourth 
 if (movingRight) {
    if (xPos < 800) {
      xPos = xPos + 1;  // Move right until xPos reaches 800
    } else {
      movingRight = false;  // Switch direction when xPos reaches 800
    }
  } else {
    if (xPos > 0) {
      xPos = xPos - 1;  // Move left until xPos reaches 0
    }else {
      movingRight = true;  // Switch direction when xPos reaches 0
    }}
} // End of the animation
