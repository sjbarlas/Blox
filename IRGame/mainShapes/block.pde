class Block extends Shape
{
 void display()
  {
    fill(random(255), random(255), random(255));
    rect(pos.x, pos.y, 20, 20);
  } // end display()
} // end class Ball
