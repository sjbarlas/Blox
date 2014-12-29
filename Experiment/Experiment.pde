PFont font;

void setup()
{
  size(500,500);
  font = loadFont("KaiTi-20.vlw");
}

void draw()
{
  int m = millis();
  noStroke();
  fill(m % 1000);
  textFont(font, 20);
  text("Amazing Game", 215, 200);
}
