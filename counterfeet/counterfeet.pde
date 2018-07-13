Counter[][] counters;
Counter[][] tiles; //maybe not counter

void setup() {
  fullScreen();
  counters = new Counter[2][6];
  tiles = new Counter[8][8];
  for (int i = 0; i < 2; i++) {
    counters[i][0] = new Counter(1, i);
    counters[i][1] = new Counter(1, i);
    counters[i][2] = new Counter(2, i);
    counters[i][3] = new Counter(2, i);
    counters[i][4] = new Counter(3, i);
    counters[i][5] = new Counter(3, i);
  }
  for (int i = 0; i < 6; i++) {
    tiles[i][0] = counters[0][i];
  }
  for (int i = 7; i > 1; i--) {
    tiles[i][7] = counters[1][7 - i];
  }
}

void draw() {
  
}

private class Counter {
  int mood;
  int size;
  int player;

  private Counter(int size, int player) {
    this.size = size;
    mood = 3;
    this.player = player;
  }
}