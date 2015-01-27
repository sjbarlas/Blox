// Game Over screen 

void G_Over()
{
  background(0);
  textFont(font2, 100);
  text("GAME OVER", 550, 200);
  text("POINTS: "+ points, 550, 300);

  fill(255, 255, 0);
  text("Insert a coin to play again!", 5, 700); // Foreground bottom

  if (key == '5' || key == '5')
  {
    Home = false;
    G_Over = false;
    Game = true;
    Game();
  }
}

