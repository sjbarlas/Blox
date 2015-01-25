class Shape 
{
  // GLOBAL VARIABLES
  PVector pos; // position of the shapes
  //PVector speed;

  // CONSTRUCTOR
  Shape()
  {
    pos = new PVector(random(0, displayWidth), random(0, displayHeight));
  } // end Constructor

  // FUNCTIONS
  void display()
  {
    fill(random(255), random(255), random(255));
  } // end display()
} // end Shape


class Block extends Shape
{
  void display()
  {
    super.display();
    rect(pos.x, pos.y, 50, 50);
  } // end display()
} // end class Block

