class Ship {
  // Attributes
  float aliceX;
  float aliceY;
  float aliceSpeed;
  float shipSize = 100;

  // Constructor
  Ship() {  
    aliceX = 100;
    aliceY = height * 0.75;
    aliceSpeed = 1;
  }

  // Display method
  void displayShip() {
    noStroke();
    fill(100, 100, 255);
    ellipse(aliceX, aliceY, shipSize, shipSize / 2);
    
    fill(200, 200, 255);
    ellipse(aliceX, aliceY - shipSize / 6, 2 * shipSize / 3, shipSize / 3);
    
    fill(250, 250, 0);
    circle(aliceX, aliceY + shipSize / 8, shipSize / 6);
    circle(aliceX - shipSize / 4, aliceY + shipSize / 12, shipSize / 6);
    circle(aliceX + shipSize / 4, aliceY + shipSize / 12, shipSize / 6);
  }

  // Move method
  void move() {
    aliceX += aliceSpeed;

    if (aliceX > width + shipSize) {
      aliceX = -shipSize;
    } else if (aliceX < -shipSize) {
      aliceX = width + shipSize;
    }
  }
}
