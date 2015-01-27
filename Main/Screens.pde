void Screens()
{
  if (keyPressed)
  { 
    if (key == 'q' || key == 'Q')
    {
      Game = true; // Game screen appears
      Home = false; // Home screen disappears
      Game();
    } // end key
  } // end if
} // end Screens
