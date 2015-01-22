class Circle extends Shape
{
 void display()
  {
    fill(random(255), random(255), random(255));
    ellipse(pos.x, pos.y, 100, 100);
  } // end display()
} // end class Ball
