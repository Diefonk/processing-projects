void setup() {
  fullScreen();
  noCursor();
  background(0);
}

void draw() {
  stroke(random(256));
  strokeWeight(random(7));
  int y = (int) random(height);
  line(0, y, width, y);
  //line(0, y, width, height - y);
  int x = (int) random(width);
  line(x, 0, x, height);
  //line(x, 0, width - x, height);
}