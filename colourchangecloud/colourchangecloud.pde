//bits of circles or curves forming a cloud on the screen changing in colour from left to right

void setup() {
  fullScreen();
  noCursor();
  noFill();
  background(0);
}

void draw() {
  stroke(random(256), random(256), random(256));
  for (int i = 0; i < 8; i++) {
    for (int k = 0; i < 20; k++) {
      strokeWeight(random(5) + 3);
      curve(random((width / 8) * i + 10) - 5, random(height + 10) - 5, random((width / 8) * i + 10) - 5, random(height + 10) - 5, random((width / 8) * i + 10) - 5, random(height + 10) - 5, random((width / 8) * i + 10) - 5, random(height + 10) - 5);
    }
  }
}