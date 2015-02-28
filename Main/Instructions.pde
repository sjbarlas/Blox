// Instructions screen
int j = 100;
int f = 50;

void Instructions()
{
  // Dotted background
  for (int x = 0; x < width; x+=j)
  {
    for (int y = 0; y < height; y+=j)
    {
      line(x + 0, y + 0, x + 10, y + 10);
    } //  end for
  } // end for

  for (int x = 0; x < width; x+=f)
  {
    for (int y = 0; y < height; y+=f)
    {
      line(x + 0, y + 0, x + 10, y + 0);
    } //  end for
  } // end for

  textFont(font, 200);
  text("Blox", width/3, height/3); // Text of "Blox"
  line(460, 260, 900, 260);

  textFont(font2, 50);
  text("> Use the controls to move the paddle right and left", 30, 400);
  text("> Use the paddle to hit the blox", 30, 500);
  text("> If the ball is out of the screen, it's GAME OVER", 30, 600);
  textFont(font3, 50);
  text("Press START button to play", 330, 700); // Foreground bottom
}

