PFont font;

void setup()
{
  size(500,500);
  font = loadFont("KaiTi-20.vlw");
}
int i = 0;
void draw()
{
  i = i+1;
  if(i > 50)
  {
    fill(255,0,0);
  }
  
  if(i > 100)
  {
    fill(255);
    i = 0;
  }
  
  background(0);
//  int m = millis();
//  noStroke();
//  fill(m % 1000);
  textFont(font, 20);
  text("Amazing Game", 215, 200);
}
