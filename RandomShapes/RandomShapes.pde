// runs once
void setup() {
  // canvas
  size(500, 500);
  // background white
  background(255);
}

// runs repeatedly
void draw() {
  // random position
  float x = random(0, 500);
  float y = random(0, 500);
  // random size
  float size = random(0, 50);
  // draw ellipse
  ellipse(x, y, size, size);
}
