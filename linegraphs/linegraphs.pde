int[][] colours = {{255, 0, 0}, {0, 255, 0}, {0, 0, 255}};
int min = 0;
int ox;
int oy;
int ny;

void setup() {
  fullScreen();
  noCursor();
  noFill();
  strokeWeight(3);
}

void draw() {
  if (min != minute()) {
    background(255);
    stroke(0);
    line(20, height - 20, 20, 20);
    line(20, 20, 15, 25);
    line(20, 20, 25, 25);
    line(20, height - 20, width - 20, height - 20);
    line(width - 20, height - 20, width - 25, height - 25);
    line(width - 20, height - 20, width - 25, height - 15);
    for (int i = 0; i < colours.length; i++) {
      stroke(colours[i][0], colours[i][1], colours[i][2]);
      ox = 25;
      oy = (int) random(height - 50) + 25;
      for (int nx = 30; nx <= width - 25; nx += 5) {
        ny = oy + ((int) random(51) - 25);
        if (ny < 25) {
          ny += 25;
        }
        else if (ny > height - 25) {
          ny -= 25;
        }
        line(ox, oy, nx, ny);
        ox = nx;
        oy = ny;
      }
    }
    min = minute();
  }
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    String name = "graph" + year() + "-";
    if (month() < 10) {
      name = name + "0" + month() + "-";
    }
    else {
      name = name + month() + "-";
    }
    if (day() < 10) {
      name = name + "0" + day() + "_";
    }
    else {
      name = name + day() + "_";
    }
    if (hour() < 10) {
      name = name + "0" + hour() + ".";
    }
    else {
      name = name + hour() + ".";
    }
    if (minute() < 10) {
      name = name + "0" + minute() + ".";
    }
    else {
      name = name + minute() + ".";
    }
    if (second() < 10) {
      name = name + "0" + second();
    }
    else {
      name = name + second();
    }
    save(name + ".png");
  }
}