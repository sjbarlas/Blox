PFont font;
int i = 0; // counter
int x = 0;

void setup()
{
  size(500,500);
  font = loadFont("KaiTi-20.vlw");
}

void draw()
{
  x +=1;
  
  // Blinking text
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
  textFont(font, 20);
  text("Amazing Game", 180, 100);
  
  fill(0, 255, 0);
  rect(x, 190, 10, 10);
  
  wrap();
}

// movement of rect
void wrap()
{
    if(x >= 500)
    {
      x = 0;
    }
}
