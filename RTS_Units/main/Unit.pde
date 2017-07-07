class Unit
{
  int x;
  int y;
  int radius;
  color col;
  Unit(int _x, int _y)
  {
    x = _x;
    y = _y;
    col = color(255);
    radius = 20;
  }
  void dispProperties()
  {
    print("\nx: " + x);
    print("\ny: " + y);
  }
  void disp()
  {
    fill(col);
    ellipse(x, y, radius, radius);
  }
  boolean checkInsideRect(int topleftX, int topleftY, int bottomrightX, int bottomrightY, boolean dragging)
  {
    if(x < bottomrightX && x > topleftX && y < bottomrightY && y > topleftY && dragging == true)
    {
      return true;
    }
    else
    {
      return false;
    }
  } 
  void changeColor()
  {
    col = color(100, 0, 0);
  }
  void resetColor()
  {
    print("reset");
    col = color(255);
  }
  
}