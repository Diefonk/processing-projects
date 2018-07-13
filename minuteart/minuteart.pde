float[][][] palettes = {{{105, 210, 231}, {167, 219, 216}, {224, 228, 204}, {243, 134, 48}, {250, 105, 0}}, //http://www.colourlovers.com/palette/92095/Giant_Goldfish
                       {{254, 67, 101}, {252, 157, 154}, {249, 205, 173}, {200, 200, 169}, {131, 175, 155}}, //http://www.colourlovers.com/palette/629637/(%E2%97%95%E3%80%9D%E2%97%95)
                       {{236, 208, 120}, {217, 91, 67}, {192, 41, 66}, {84, 36, 55}, {83, 119, 122}}, //http://www.colourlovers.com/palette/694737/Thought_Provoking
                       {{207, 240, 158}, {168, 219, 168}, {121, 189, 154}, {59, 134, 134}, {11, 72, 107}}, //http://www.colourlovers.com/palette/580974/Adrift_in_Dreams
                       {{85, 98, 112}, {78, 205, 196}, {199, 244, 100}, {255, 107, 107}, {196, 77, 88}}, //http://www.colourlovers.com/palette/1930/cheer_up_emo_kid
                       {{119, 79, 56}, {224, 142, 121}, {241, 212, 175}, {236, 229, 206}, {197, 224, 220}}, //http://www.colourlovers.com/palette/49963/let_them_eat_cake
                       {{232, 221, 203}, {205, 179, 128}, {3, 101, 100}, {3, 54, 73}, {3, 22, 52}}, //http://www.colourlovers.com/palette/292482/Terra
                       {{209, 242, 165}, {239, 250, 180}, {255, 196, 140}, {255, 159, 128}, {245, 105, 145}}, //http://www.colourlovers.com/palette/373610/mellon_ball_surprise
                       {{73, 10, 61}, {189, 21, 80}, {233, 127, 2}, {248, 202, 0}, {138, 155, 15}}, //http://www.colourlovers.com/palette/848743/(%E2%97%95_%E2%80%9D_%E2%97%95)
                       {{89, 79, 79}, {84, 121, 128}, {69, 173, 168}, {157, 224, 173}, {229, 252, 194}}, //http://www.colourlovers.com/palette/443995/i_demand_a_pancake
                       {{0, 160, 176}, {106, 74, 60}, {204, 51, 63}, {235, 104, 65}, {237, 201, 81}}, //http://www.colourlovers.com/palette/1473/Ocean_Five
                       {{233, 78, 119}, {214, 129, 137}, {198, 164, 154}, {198, 229, 217}, {244, 234, 213}}, //http://www.colourlovers.com/palette/867235/LoversInJapan
                       {{63, 184, 175}, {127, 199, 175}, {218, 216, 167}, {255, 158, 157}, {255, 61, 127}}, //http://www.colourlovers.com/palette/932683/Compatible
                       {{217, 206, 178}, {148, 140, 117}, {213, 222, 217}, {122, 106, 83}, {153, 178, 183}}}; //http://www.colourlovers.com/palette/77121/Good_Friends
int min;
int sec;
int palette;
int bg;
int stroke;
/**int x;
int y;
int newX;
int newY;
int change;
int halfchange;*/

void setup() {
  fullScreen();
  noCursor();
  noFill();
  min = minute();
  sec = second();
  palette = (int) random(palettes.length);
  bg = (int) random(5);
  background(palettes[palette][bg][0], palettes[palette][bg][1], palettes[palette][bg][2]);
}

void draw() {
  if (min != minute()) {
    palette = (int) random(palettes.length);
    bg = (int) random(5);
    background(palettes[palette][bg][0], palettes[palette][bg][1], palettes[palette][bg][2]);
    min = minute();
  }
  if (sec != second()) {
    do {
      stroke = (int) random(5);
    } while (bg == stroke);
    strokeWeight(random(10) + 3);
    stroke(palettes[palette][stroke][0], palettes[palette][stroke][1], palettes[palette][stroke][2]);
    curve(random(width), random(height), random(width), random(height), random(width), random(height), random(width), random(height));
    /**x = (int) random(width);
    y = (int) random(height);
    change = (int) random(21);
    halfchange = (change - 1) / 2;*/
    sec = second();
  }
  /**newX = x + ((int) random(change) - halfchange);
  newY = y + ((int) random(change) - halfchange);
  line(x, y, newX, newY);
  x = newX;
  y = newY;*/
}