int s;
float i;
int c;

void setup() {
  size(500, 500, P3D);
  background(255);
  fill(221, 221, 221);
  strokeWeight(5);
  s = second();
  i = 0;
  c = 0;
}

void draw() {
  translate(250, 250, 0);
  rotateY(PI / 4 + i);
  rotateX(PI / 4);
  rotateZ(PI / 4);
  box(200);
  if (s != second()) {
    s = second();
    i += PI / 32;
    c++;
    if (c < 10) {
      save("cube0" + c + ".png");
    }
    else {
      save("cube" + c + ".png");
    }
    background(255);
  }
  if (c == 64) {
    System.exit(0);
  }
}