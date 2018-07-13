import processing.sound.*;

AudioIn in;
Amplitude amp;

void setup() {
  fullScreen();
  noCursor();
  in = new AudioIn(this, 0);
  in.start();
  amp = new Amplitude(this);
  amp.input(in);
}

void draw() {
  background(amp.analyze() * 255);
}