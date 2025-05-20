// Animation by Johanne
// 06.05
Flower jo; //<>//

// Setup chunk
void setup() {
  size(800, 800);
  jo = new Flower(400,300);
}  


void draw() {
  background(255);
  jo.displayFlower();
  jo.updateEmotion();

// chose how to move
    if (!jo.jump) {
      jo.move();  // If jumping, call the jump method
    } else {
      jo.jump();  // Otherwise, move normally
    }
  }

// Change direction if keyPressed()
void keyPressed() {
  if (jo.jump == true) {
    jo.jump = false;  // Stop jumping when key is pressed
  } else {
    jo.jump = true;   // Start jumping when key is pressed
  }
}

// Ability to drag and drop the animation, if the mouse is in the center circle
void mouseDragged() {
    jo.distance_check = dist(mouseX, mouseY, jo.xPos, jo.yPos);

  if (jo.distance_check <= 40) {
    jo.xPos = mouseX;
    jo.yPos = mouseY;
  }
}

// End of the animation
