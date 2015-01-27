PFont font, font2;

ArrayList shapes; // Blocks for the background

ArrayList<Player> players = new ArrayList<Player>();
boolean[] keys = new boolean[526];

// Screens
boolean Home = true;
boolean Instructions = false;
boolean Game = false;
boolean Active = false; // Game to start
boolean G_Over = false;

int i = 10; // Shapes

int points = 0; // Player points
int paddle = 200; // Player
int[][] blox = new int [30][5]; // Generating blox
int ballX, ballY; // Ball
float bSpeedX, bSpeedY; // Ball speed

// resolution
boolean devMode = false;
boolean sketchFullScreen() {
  return ! devMode;
}

void setup()
{
  setUpPlayerControllers();

  font = loadFont("BuxtonSketch-200.vlw");
  font2 = loadFont("KaiTi-100.vlw");
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
  smooth();

  for (Player player : players)
  {
    player.update();
    player.display();
  }

  frameRate(10);
  background(0);

  if (Home == true) // Home screen at the start
  {
    // Blocks to appear in the background
    shapes.add(new Block());

    for (int i = 0; i < shapes.size (); i++)
    {
      Shape s = (Shape) shapes.get(i);
      s.display();
    }

    if (shapes.size() > 15) // remove after 11 shapes are on screen
    {
      shapes.remove(0);
    }

    // Dotted background
    for (int x = 0; x < width; x+=i)
    {
      for (int y = 0; y < height; y+=i)
      {
        line(x + 0, y + 0, x + 0, y + 0);
      } //  end for
    } // end for

    textFont(font, 200);
    text("Blox", width/3, height/3); // Text of "Blox"
    line(460, 260, 900, 260);

    fill(255, 255, 0);
    textFont(font2, 100);
    text("Press START button to play", 30, 700); // Foreground bottom
  } // end Home

  if (keyPressed)
  { 
    if (key == 'q' || key == 'Q')
    {
      Game = true; // Game screen appears
      Home = false; // Home screen disappears
      Game();
    } // end key
  } // end keyPessed
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

