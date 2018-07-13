int s;

void setup() {
  fullScreen();
  noCursor();
  noStroke();
  int dot = (int) random(255);
  background(random(127) + 128 - (dot / 2), random(127) + 128 - (dot / 2), random(127) + 128 - (dot / 2));
  fill(dot);
}

void draw() {
  if (second() % 20 == 0 && s != second()) {
    int dot = (int) random(255);
    background(random(127) + 128 - (dot / 2), random(127) + 128 - (dot / 2), random(127) + 128 - (dot / 2));
    fill(dot);
    s = second();
  }
  else if (s != second()) {
    switch (second() % 4) {
      case 0: ellipse(random(width / 2), random(height / 2), 100, 100); break;
      case 1: ellipse(random(width / 2) + (width / 2), random(height / 2), 100, 100); break;
      case 2: ellipse(random(width / 2), random(height / 2) + (height / 2), 100, 100); break;
      case 3: ellipse(random(width / 2) + (width / 2), random(height / 2) + (height / 2), 100, 100); break;
      default: break;
    }
    s = second();
  }
}