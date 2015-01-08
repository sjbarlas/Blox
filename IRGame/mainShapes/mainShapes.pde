//https://processing.org/examples/multipleparticlesystems.html

PFont font;

ArrayList shapes;

void setup()
{
  font = loadFont("BuxtonSketch-48.vlw");
  size(600, 600);
  shapes = new ArrayList();
  smooth();
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
  
  if(shapes.size() > 10)
  {
    shapes.remove(0);
  }
  
  textFont(font, 48);
  text("Blox", width/3, height/3);
}
