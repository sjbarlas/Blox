void Instructions()
{
  background(0);
  textFont(font, 200);
  fill(random(255), random(255), random(255));
  text("Blox", width/3, height/3); // Text of "Blox"
  line(460, 260, 900, 260);
  textSize(20);
  text("Use the controls to move the paddle right and left", 100, 100);
  text("Use the paddle to hit the blox", 100, 200);
  text("If the ball is out of the screen, it's GAME OVER", 100, 300);
}

