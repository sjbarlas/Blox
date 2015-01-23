//https://processing.org/examples/multipleparticlesystems.html

PFont font, font2;

ArrayList shapes;

boolean move = true;

// resolution
boolean devMode = false;
boolean sketchFullScreen() {
  return ! devMode;
}

void setup()
{
  font = loadFont("BuxtonSketch-48.vlw");
  font2 = loadFont("CenturyGothic-20.vlw");
  size(600, 600);
  shapes = new ArrayList();
  smooth();

  // res
  if (devMode)
  {
    size(600, 600);
  } else
  {
    size(displayWidth, displayHeight);
  }
}

void draw()
{
  frameRate(10);
  background(0);

  if (move = true)
  {
    shapes.add(new Block());

    for (int i = 0; i < shapes.size (); i++)
    {
      Shape s = (Shape) shapes.get(i);
      s.display();
    }

    if (shapes.size() > 10) // remove after 10 shapes are on screen
    {
      shapes.remove(0);
    }
  }

  textFont(font, 48);
  text("Blox", width/3, height/3);
  fill(84, 84, 84);
  rect(width/3+2, height/3+2, 100, 50);
  fill(255, 0, 0);
  textFont(font2, 20);
  text("PLAY", width/3+6, height/3+6, 130, 70);
  
  if(mouseX >= (width/3+2)) && (mouseX <= ((width/3+2) + 100) && (mouseY >= 
}

