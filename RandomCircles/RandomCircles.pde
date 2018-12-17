// runs once
void setup() {
  // canvas size
  size(750, 550);
  // drawing characteristics for shapes
  noFill();
  strokeWeight(1); // 1 pixel border
  background(255); // white background
}

void draw() {
  // random position
  float x = random(0, width);
  float y = random(0, height);
  // random size
  float diameter = random(10, 50);
  // draw circle
  ellipse(x, y, diameter, diameter);
}

void keyPressed() {
  // stop the program and exit
  if (key == 's') {
    exit();
  }
}
