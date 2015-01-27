// Game Over screen 

void G_Over()
{
  background(0);
  text("GAME OVER", 400, height/2);
  text("POINTS: "+ points, 600, height/2);
  
  fill(255, 255, 0);
    textFont(font2, 100);
    text("Insert a coin to play again!", 5, 700); // Foreground bottom
}
