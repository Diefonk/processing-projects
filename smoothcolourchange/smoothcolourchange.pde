int second;
int millisecond;
int millis;
float r;
float g;
float b;
float newR;
float newG;
float newB;
float rstep;
float gstep;
float bstep;

void setup() {
  fullScreen();
  noCursor();
  second = second();
  millisecond = millis();
  r = random(256);
  g = random(256);
  b = random(256);
  newR = random(256);
  newG = random(256);
  newB = random(256);
  background(r, g, b);
  rstep = (newR - r) / 1000;
  gstep = (newG - g) / 1000;
  bstep = (newB - b) / 1000;
}

void draw() {
  millis = millis();
  if (second != second()) {
    r = newR;
    g = newG;
    b = newB;
    newR = random(256);
    newG = random(256);
    newB = random(256);
    rstep = (newR - r) / 1000;
    gstep = (newG - g) / 1000;
    bstep = (newB - b) / 1000;
    second = second();
  }
  else {
    r += rstep * (millis - millisecond);
    g += gstep * (millis - millisecond);
    b += bstep * (millis - millisecond);
    millisecond = millis;
  }
  background(r, g, b);
}