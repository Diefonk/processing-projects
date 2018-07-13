int mx; //mid point x
int my; //mid point y
int sec; //current second
int[][] hm = new int[2][12]; //hour marks
int[][] h = new int[2][12]; //hours
int[][] m = new int[2][60]; //minutes
int[][] s = new int[2][60]; //seconds

void setup() {
  //fullScreen();
  size(500, 500);
  noCursor();
  fill(0);
  strokeWeight(5);
  textSize(24);
  textAlign(CENTER, CENTER);
  mx = width / 2;
  my = height / 2;
  text("LOADING...", mx, my);
  int r = my - 20;
  float ha = TWO_PI / 12; //hour angle
  float ma = TWO_PI / 60; //minute angle
  for (int i = 0; i < 12; i++) {
    hm[0][i] = (int) (mx + (sin(ha * i) * r));
    hm[1][i] = (int) (my - (cos(ha * i) * r));
  }
  for (int i = 0; i < 12; i++) {
    h[0][i] = (int) (mx + (sin(ha * i) * r * 0.75));
    h[1][i] = (int) (my - (cos(ha * i) * r * 0.75));
  }
  for (int i = 0; i < 60; i++) {
    m[0][i] = (int) (mx + (sin(ma * i) * r));
    m[1][i] = (int) (my - (cos(ma * i) * r));
  }
  for (int i = 0; i < 60; i++) {
    s[0][i] = (int) (mx + (sin(ma * i) * r * 0.9));
    s[1][i] = (int) (my - (cos(ma * i) * r * 0.9));
  }
}

void draw() {
  if (sec != second()) {
    sec = second();
    background(255);
    stroke(0);
    for (int i = 0; i < 12; i++) {
      if (i == hour() % 12) {
        text(hour(), hm[0][i], hm[1][i]);
      }
      else {
        ellipse(hm[0][i], hm[1][i], 10, 10);
      }
    }
    //hour
    strokeWeight(7);
    line(mx, my, h[0][hour() % 12], h[1][hour() % 12]);
    //minute
    line(mx, my, m[0][minute()], m[1][minute()]);
    //second
    stroke(255, 0, 0);
    strokeWeight(5);
    line(mx, my, s[0][second()], s[1][second()]);
    ellipse(mx, my, 8, 8);
  }
}