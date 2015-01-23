//https://processing.org/examples/multipleparticlesystems.html

PFont font, font2;

ArrayList shapes;

ArrayList<Player> players = new ArrayList<Player>();
boolean[] keys = new boolean[526];

boolean move = true;

// resolution
boolean devMode = false;
boolean sketchFullScreen() {
  return ! devMode;
}

void setup()
{
  setUpPlayerControllers();
  
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
  for (Player player : players)
  {
    player.update();
    player.display();
  }

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
  } // end move

  textFont(font, 48);
  text("Blox", width/3, height/3);
  fill(84, 84, 84);
  rect(410, 260, 100, 50);
  fill(255, 0, 0);
  textFont(font2, 20);
  text("PLAY", width/3+6, height/3+6, 130, 70);

  if ((mouseX >= (width/3+2)) && (mouseX <= ((width/3+2) + 100)) && (mouseY >= (height/3+2)) && (mouseY >= (height/3+2) + 50))
  {
    move = false;
    fill(0);
  }
} // end draw

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

boolean checkKey(char theKey)
{
  return keys[Character.toUpperCase(theKey)];
}

char buttonNameToKey(XML xml, String buttonName)
{
  String value =  xml.getChild(buttonName).getContent();
  if ("LEFT".equalsIgnoreCase(value))
  {
    return LEFT;
  }
  if ("RIGHT".equalsIgnoreCase(value))
  {
    return RIGHT;
  }
  if ("UP".equalsIgnoreCase(value))
  {
    return UP;
  }
  if ("DOWN".equalsIgnoreCase(value))
  {
    return DOWN;
  }
  //.. Others to follow
  return value.charAt(0);
}

void setUpPlayerControllers()
{
  XML xml = loadXML("arcade.xml");
  XML[] children = xml.getChildren("player");
  int gap = width / (children.length + 1);

  for (int i = 0; i < children.length; i ++)  
  {
    XML playerXML = children[i];
    Player p = new Player(
    i
      , color(random(0, 255), random(0, 255), random(0, 255))
      , playerXML);
    int x = (i + 1) * gap;
    p.pos.x = x;
    p.pos.y = 300;
    players.add(p);
  }
}

