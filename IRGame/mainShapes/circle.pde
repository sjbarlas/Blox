class Circle extends Shape
{
 void display()
  {
    fill(random(255), random(255), random(255));
    ellipse(pos.x, pos.y, 100, 100);
  } // end display()
} // end class Ball

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
