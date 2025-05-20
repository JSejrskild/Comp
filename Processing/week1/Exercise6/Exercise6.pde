// Exercise 6

void setup(){
  size(800,600);
}

void draw(){
  background(0, 250, 0); // white background
  fill(255,250,0); // Then we color the next line yellow (red+green)
  rect(200,150,100,50); // we make a rectangle that is red
  fill(50,50,200); // we will colour the following line green
  circle(200,200,100); // We will make a circle that is green
}
