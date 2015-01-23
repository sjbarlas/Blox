// Instructions dekho

PFont font, font2;

ArrayList shapes;

ArrayList<Player> players = new ArrayList<Player>();
boolean[] keys = new boolean[526];

boolean Home = false;
boolean Instructions = false;
boolean Game = true;
boolean Active = false;

int points = 0;
int paddle = 200;
int[][] blox = new int [54][5];
int ballX, ballY;
float bSpeedX, bSpeedY;

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
} // end setup

void draw()
{
  for (Player player : players)
  {
    player.update();
    player.display();
  }

  frameRate(10);
  background(0);

  if (Home == true)
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

    textFont(font, 48);
    text("Blox", width/3, height/3);
    fill(255, 0, 0);
    textFont(font2, 20);
    text("Press START button to play", 400, 300);
  } // end Home

  if (keyPressed)
  { 
    if (key == 'q' || key == 'Q')
    {
      Instructions = true;
      Home = false;
    } // end key
  } // end keyPessed

  Game();
} // end draw

// controls and XML
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

