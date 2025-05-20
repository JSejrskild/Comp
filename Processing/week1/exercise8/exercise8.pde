// Exercise 8 - Flowergirl

void setup(){
  size(800,800);
  noStroke();
}

void draw(){
  background(255); // white background


// Flower petals
fill(#FADA7A);// Yellow
circle(400, 200, 150);// n
fill(#FADA7A);// Yellow
circle(500, 240, 150);// ne (with = +100, height = +40)
fill(#FADA7A);// Yellow
circle(570, 300, 150);// en
fill(#FADA7A);// Yellow
circle(600, 400, 150);// e
fill(#FADA7A);// Yellow
circle(570, 500, 150);// es 
fill(#FADA7A);// Yellow
circle(500, 560, 150);// se
fill(#FADA7A);// Yellow
circle(400, 600, 150);// s
fill(#FADA7A);// Yellow
circle(300, 560, 150);// sv
fill(#FADA7A);// Yellow
circle(230, 500, 150);// vs
fill(#FADA7A);// Yellow
circle(200, 400, 150);// v
fill(#FADA7A);// Yellow
circle(230, 300, 150);// vn
fill(#FADA7A);// Yellow
circle(300, 240, 150);// nv

// The head 
fill(#F0A04B);// Orange
circle(400, 400, 400);// Circle a bit higher than center

// Eyes
fill(#FCE7C8); //white
arc(480, 380, 100, 160, PI, TWO_PI); // the eyes
fill(#FCE7C8); //white
arc(320, 380, 100, 160, PI, TWO_PI); // the eyes
fill(#B1C29E); //sage
arc(320, 380, 60, 80, PI, TWO_PI); // the eyes
fill(#B1C29E); //sage
arc(480, 380, 60, 80, PI, TWO_PI); // the eyes
fill(#443627); //coffee
arc(325, 380, 40, 60, PI, TWO_PI); // the eyes
fill(#443627); //coffee
arc(475, 380, 40, 60, PI, TWO_PI); // the eyes

// Smile
fill(#EFDCAB); //cream
arc(400, 440, 180, 120, 0, PI); // smile

} // End of the mascot
