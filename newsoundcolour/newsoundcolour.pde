import processing.sound.*;

FFT fft;
AudioIn in;
float[] rgb;

void setup() {
  fullScreen();
  noCursor();
  rgb = new float[3];
  in = new AudioIn(this, 0);
  fft = new FFT(this, 3);
  in.start();
  fft.input(in);
}

void draw() {
  fft.analyze(rgb);
  background(rgb[0] * 255, rgb[1] * 255, rgb[2] * 255);
}