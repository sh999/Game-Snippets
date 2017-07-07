class Unit
{
  int x;
  int y;
  int radius;
  color col;
  boolean inside_rect;
  Unit(int _x, int _y)
  {
    x = _x;
    y = _y;
    col = color(255);
    radius = 20;
    inside_rect = false;
  }
  void dispProperties()
  {
    print("\nx: " + x);
    print("\ny: " + y);
  }
  void disp()
  {
    //fill(col);
    /*
    if(inside_rect == true)
    {
      col = color(100, 0, 0);
    }
    */
    fill(col);
    ellipse(x, y, radius, radius);
    
  }
  boolean checkInsideRect(int topleftX, int topleftY, int bottomrightX, int bottomrightY, boolean dragging)
  {
    if(x < bottomrightX && x > topleftX && y < bottomrightY && y > topleftY && dragging == true)
    {
      //inside_rect = true;
      return true;
    }
    else
    {
      //inside_rect = false;
      return false;
    }
  } 
  void markAsInside()
  {
    inside_rect = true;
    col = color(100, 0, 0);
  }
  void resetColor()
  {
    print("reset");
    col = color(255);
  }
  
}