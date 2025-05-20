float moonX;
float moonY;
Ship alice;

void setup() {
  size(800, 600); 
  moonX = 0.9 *width;
  moonY = 0.1 *height;
  alice = new Ship();
}

void draw() {
  background(0, 0, 100);
  fill(200,200,0);
  arc(moonX,moonY, 80,80,PI/4,PI/4+PI);  
  
  alice.displayShip();
  alice.move();
}
