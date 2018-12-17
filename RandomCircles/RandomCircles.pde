// required import so that we can write to PDF file
import processing.pdf.*;
// object that will let us write to PDF file
PGraphics vectorImage;
// runs once
void setup() {
  // canvas size
  size(750, 550);
  // create the empty PDF output file
  vectorImage = createGraphics(width, height, PDF, "output.pdf");  
  // start drawing to the PDF file
  vectorImage.beginDraw();
  // drawing characteristics for shapes
  noFill();
  vectorImage.noFill();
  strokeWeight(1); // 1 pixel border
  background(255); // white background
}

void draw() {
  // random position
  float x = random(0, width);
  float y = random(0, height);
  // random size
  float diameter = random(10, 50);
  // draw circle to both screen and PDF
  ellipse(x, y, diameter, diameter);
  vectorImage.ellipse(x, y, diameter, diameter);
}

void keyPressed() {
  // stop the program and exit
  if (key == 's') {
    // stop drawing to the PDF
    vectorImage.endDraw();
    vectorImage.dispose();
    vectorImage = null;
    // exit the program
    exit();
  }
}
