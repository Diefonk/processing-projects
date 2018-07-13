int second;

void setup() {
  fullScreen();
  noCursor();
}

void draw() {
  if (second != second()) {
    background(random(256), random(256), random(256));
    second = second();
  }
  stroke(random(256), random(256), random(256));
  fill(random(256), random(256), random(256));
  switch ((int) random(3)) {
    case 0: rect(random(displayWidth), random(displayHeight), random(displayWidth), random(displayHeight)); break;
    case 1: ellipse(random(displayWidth), random(displayHeight), random(displayWidth), random(displayHeight)); break;
    case 2: curve(random(displayWidth), random(displayHeight), random(displayWidth), random(displayHeight), random(displayWidth), random(displayHeight), random(displayWidth), random(displayHeight)); break;
    default: break;
  }
}