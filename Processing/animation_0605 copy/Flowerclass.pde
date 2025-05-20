class Flower{

  // Atributes to the flower
float xPos = 400; // Setting an x Position
float yPos = 400; // Setting a y Position
float dx;
float dy;
float distance_check;
boolean happy = true;
boolean jump = false;

// Contructor
Flower(float startX, float startY) {
  // making the flower
  noStroke();
  xPos = startX;
  yPos = startY;
  dx = random(-2, 2);
  dy = random(-2, 2);
}

// Display the flower
void displayFlower (){ 
///// Drawing grass //////
  // Grass and stem
  fill(#58AF50);
  rect(0, height-80, width, 80);
  fill(#58AF50);
  rect(width/2, height/2, 40, height/2);

  // Drawing grass using for-loop
  for (int grass = 10; grass < width; grass+=20) {
    stroke(#58AF50);
    strokeWeight(4);
    line(grass, height-80, grass+8, height-100);
  }
  
  noStroke(); 
  ///// Drawing sun //////
  // Sun when its happy
  if (happy) {
    fill(#FADA7A);
    circle(650, 100, 150);
  }
 
 ///// Drawing flower //////
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

 ///// Emotions /////  
  if (happy == true) {
    // Smile
    fill(#EFDCAB); // cream color
    arc(xPos, yPos + 40, 180, 120, 0, PI);
  } else {
    // Frown
    fill(#EFDCAB); // cream color
    arc(xPos, yPos + 60, 180, 120, PI, TWO_PI);
  }
}

  // Change emotion
  void updateEmotion() {
    if (dx > 0 && dy > 0) {
    happy = false;
  } else {
    happy = true;
  }
 }


void move() {
  float radius = 200;  // Approximate radius of the flower
  float gravity = 0.5; // Gravity effect
  float jumpSpeed = 10; // Speed of the jump
  float jumpHeight = 80; // Height to jump (max height)
  float bottomHeight = 720; // Bottom height to stop descending

  // While loop to check if we're in jump mode or not
  while (true) {
    if (!jump) {
      // Normal bouncing behavior
      if (xPos + radius > width || xPos - radius < 0) {
        dx = -dx;  // Reverse the horizontal direction when hitting the wall
      }
      if (yPos + radius > height - 80 || yPos - radius < 0) {
        dy = -dy;  // Reverse the vertical direction when hitting the floor or ceiling
      }
      // Apply normal movement
      xPos += dx;
      yPos += dy;
    } else {
      // Jumping behavior
      if (yPos > jumpHeight) {
        dy = -jumpSpeed; // Move upwards
      } else {
        dy += gravity; // Gravity pulls it down
      }

      if (yPos + radius >= bottomHeight) {
        dy = 0;  // Stop vertical movement when hitting bottom
        jump = false;  // Stop jumping
      }

      // Apply vertical movement
      yPos += dy;
    }
    break; // Exit the loop after one cycle of movement
  }
}

  }
