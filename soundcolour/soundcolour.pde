import processing.sound.*;

AudioIn in;
Amplitude amp;
float r;
float g;
float b;
float newR;
float newG;
float newB;
float rstep;
float gstep;
float bstep;
int m;
int millis;
int time = 5000;

void setup() {
  fullScreen();
  noCursor();
  in = new AudioIn(this, 0);
  in.start();
  amp = new Amplitude(this);
  amp.input(in);
  r = random(128);
  g = random(128);
  b = random(128);
  newR = random(128);
  newG = random(128);
  newB = random(128);
  rstep = (newR - r) / time;
  gstep = (newG - g) / time;
  bstep = (newB - b) / time;
  m = millis();
}

void draw(){
  millis = millis();
  if (m < (millis - time)) {
    r = newR;
    g = newG;
    b = newB;
    newR = random(128);
    newG = random(128);
    newB = random(128);
    rstep = (newR - r) / time;
    gstep = (newG - g) / time;
    bstep = (newB - b) / time;
    m = millis;
  }
  else {
    r += rstep * (millis - m);
    g += gstep * (millis - m);
    b += bstep * (millis - m);
    m = millis;
  }
  background(r + 128 * amp.analyze(), g + 128 * amp.analyze(), b + 128 * amp.analyze());
}