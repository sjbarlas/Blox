// Game Over screen 

void G_Over()
{
  background(0);
  textFont(font2, 100);
  text("GAME OVER", 450, 200);
  text("POINTS: "+ points, 450, 300);

  fill(255, 255, 0);
  text("Press BUTTON 1 to play again", 20, 700); // Foreground bottom
}

