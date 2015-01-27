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
    for (int i = 0; i < 60; i++) 
    {
      for (int j = 0; j < 5; j++)
      {
        if (Active == false) // Playing mode
        {
          // different blox colours
          blox[i][j] = 1; 
          fill(random(255), random(255), random(255)); // Colour of blox
        }
        
        else if (blox[i][j] == 0)
        {
          fill(0);
        }
        
        else
        {
          fill(random(255), random(255), random(255));
        }
        // blox
        rect(i*32, j*16+32, 32, 16);
      } // end for
    } // end for

    // paddle
    rect(mouseX-paddle/2, height-16, paddle, height);

    if (Active == true) // clicked
    {
      // hitting the paddle
      if ((ballY >= height-32) && (ballX > mouseX-paddle/2) && (ballX < mouseX+paddle/2))
      {
        bSpeedY = -bSpeedY; // speed decreases
        bSpeedX = bSpeedX/abs(bSpeedX)*map(abs(ballX-mouseX), 0, paddle/2, 1, 5);
        points++; // add points
      } // end if

      if (ballY < 0) // ball hitting the top wall
      {
        bSpeedY = -bSpeedY;
      } // end if

      if ((ballX >= width-16)||(ballX < 0)) // hits side
      {
        bSpeedX = -bSpeedX;
      } // end if
    } // end if

    else // player doesn't click, ball stays on screen
    {
      bSpeedX = 0;
      bSpeedY = 0;
      ballX = mouseX-8;
      ballY = height-32;
    } // end else

    if (ballY > height-6) // paddle doesn't hit the ball
    {
      G_Over = true;
      G_Over();
    } // end if

    // X and Y speed of the ball
    ballX+= bSpeedX; 
    ballY+= bSpeedY;

    rect(ballX, ballY, 16, 16); // ball
    
    // hitting the bricks with the ball
    for (int i = 0; i < 60; i++)
    {
      for (int j = 0; j < 5; j++)
      {
        if ((blox[i][j] == 1) && (ballX > i*32) && (ballX < (i+1)*32) && (ballY < (j+1)*16 + 32))
        {
          blox[i][j] = 0;
          points++;
          bSpeedY = -bSpeedY;
        } // end if
      } // end for
    } // end for
  } // end Game
} // end Game

// Clicking to start and move the ball
void mouseClicked()
{
  bSpeedX = 26;
  bSpeedY = 30;
  Active = true;
}

