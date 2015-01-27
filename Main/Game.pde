// Ball ko theek
// Game Ove KO !!! banao
// Game screen theek

void Game()
{ 
  if (Game == true)
  {
    background(0); // Black

    textSize(60);
    text("POINTS: " + points, width/2, height/2); // Points of player

    // Number of blox
    for (int i = 0; i < 30; i++) 
    {
      for (int j = 0; j < 5; j++)
      {
        if (Active == false) // Playing mode
        {
          blox[i][j] = 1; 
          fill(random(255), random(255), random(255)); // Colour of blox
        }

        rect(i*25, j*25+25, 25, 25);
      } // end for
    } // end for

    rect(mouseX-paddle/2, height-25, paddle, height);

    if (Active == true)
    {
      if ((ballY >= height-25) && (ballX > mouseX-paddle/2) && (ballX < mouseX+paddle/2))
      {
        bSpeedY = -bSpeedY;
        bSpeedX = bSpeedX/abs(bSpeedX)*map(abs(ballX-mouseX), 0, paddle/2, 1, 5);
        points++;
      } // end if

      if (ballY < 0)
      {
        bSpeedY = -bSpeedY;
      } // end if

      if ((ballX >= width-25)||(ballX < 0))
      {
        bSpeedX = -bSpeedX;
      } // end if
    } // end if

    else 
    {
      bSpeedX = 0;
      bSpeedY = 0;
      ballX = mouseX-10;
      ballY = height-30;
    } // end else

    if (ballY > height-25)
    {
      G_Over = true;
      G_Over();
    } // end if

    ballX+= bSpeedX; 
    ballY+= bSpeedY;

    rect(ballX, ballY, 16, 16);

    for (int i = 0; i < 30; i++)
    {
      for (int j = 0; j < 5; j++)
      {
        if ((blox[i][j] == 1) && (ballX > i*25) && (ballX < (i+1)*25) && (ballY < (j+1)*25 + 25))
        {
          blox[i][j] = 0;
          points++;
          bSpeedY = -bSpeedY;
        } // end if
      } // end for
    } // end for
  } // end Game
} // end Game

void mouseClicked()
{
  bSpeedX = 10;
  bSpeedY = 50;
  Active = true;
}

