class Shape 
{
  // GLOBAL VARIABLES
  PVector pos; // position of the shapes
  PVector speed;

  // CONSTRUCTOR
  Shape()
  {
    pos = new PVector(random(0, 600), random(0, 600));
  } // end Constructor

  // FUNCTIONS
  void display()
  {
  } // end display()
} // end Shape
