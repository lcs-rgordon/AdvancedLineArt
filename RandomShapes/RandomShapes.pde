// runs once
void setup() {
  // canvas
  size(500, 500);
  // background white
  background(255);
  // no fill
  noFill();
}

// runs repeatedly
void draw() {
  
  drawFlower(2.0);

}

// draws a flower shape
//
// In Swift..
// func drawFlower() {
void drawFlower(float scale) {
  ellipse(mouseX, mouseY, 50 * scale, 10 * scale);
  ellipse(mouseX, mouseY, 10 * scale, 50 * scale);
}

void keyPressed() {
  if (key == 's') {
    saveFrame("output-####.png");
  } 
}
