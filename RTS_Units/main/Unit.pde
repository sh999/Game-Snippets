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
    //col = color(100);
    radius = 20;
  }
  void dispProperties()
  {
    print("\nx: " + x);
    print("\ny: " + y);
  }
  void disp()
  {
    //fill(col);
    ellipse(x, y, radius, radius);
  }
}