class Shape 
{
  // GLOBAL VARIABLES
  PVector pos; // position of the shapes
  PVector speed;

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


/* Override functions - execute same function in child class 
 rather than the one in parent class 
 e.g. p - void sleep() { printIn("zzz"); } 
 c - void sleep() { printIn("purrr"); }*/

/* super - calls the functionality of the same parent function
 as well as the child function
 e.g. c - void sleep()
 { printIn("purrr");
 super.sleep(); // "zzz"
 } */
