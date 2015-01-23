void Game()
{
  background(0);

  textSize(60);
  text("POINTS: " + points, width/2, height/2);

  for (int i = 0; i < 54; i++)
  {
    for (int j = 0; j < 5; j++)
    {
      if (Active == false)
      {
        blox[i][j] = 1;
        fill(random(255), random(255), random(255));
      }

      rect(i*25, j*25, 25, 25);
      
    }
  }
  
  rect(mouseX-paddle/2, height-16, paddle, height);
  
} // end Game

