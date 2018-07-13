int x = 0;
int y = 0;

void setup() {
  fullScreen();
  noCursor();
  background(0);
  strokeWeight(2);
}

void draw() {
  if (x == 0 && y == 0) {
  stroke(random(256), random(256), random(256));
  line(0, 0, width, height);
  x++;
  }
  else if (x <= width) {
    line(x, 0, width - x, height);
    x++;
  }
  else if (y <= height) {
    line(0, height - y, width, y);
    y++;
  }
  else {
    x = 0;
    y = 0;
  }
}