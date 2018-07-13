int second;

void setup() {
  size(1280, 720);
  second = second();
  background(random(256), random(256), random(256));
}

void draw() {
  if (second != second()) {
    background(random(256), random(256), random(256));
    second = second();
  }
}