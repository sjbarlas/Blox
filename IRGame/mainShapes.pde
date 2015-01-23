//https://processing.org/examples/multipleparticlesystems.html

PFont font;

ArrayList shapes;

// resolution
boolean devMode = false;
boolean sketchFullScreen() {
  return ! devMode;
}

void setup()
{
  font = loadFont("BuxtonSketch-48.vlw");
  size(600, 600);
  shapes = new ArrayList();
  smooth();
  
  // res
  if (devMode)
  {
    size(600, 600);
  }
  else
  {
    size(displayWidth, displayHeight);
  }
}

void draw()
{
  frameRate(10);
  background(0);
  
  shapes.add(new Block());
  
  for(int i = 0; i < shapes.size(); i++)
  {
    Shape s = (Shape) shapes.get(i);
    s.display();
  }
  
  if(shapes.size() > 10) // remove after 10 shapes are on screen
  {
    shapes.remove(0);
  }
  
  textFont(font, 48);
  text("Blox", width/3, height/3);
}
