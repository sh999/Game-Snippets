class DragBox
{
  int x1;
  int y1;
  int x2;
  int y2;
  
  DragBox()
  {
    
  }
  
  void updateTopLeft(int a, int b)
  {
    x1 = a;
    y1 = b;
  }
  void updateBottomRight(int a, int b)
  {
    x2 = a;
    y2 = b;
  }
  
  void update_coords(int a, int b, int c, int d)
  {
    x1 = a;
    y1 = b;
    x2 = c;
    y2 = d;
  }
  
  void disp()
  {
    rect(x1, y1, mouseX-x1, mouseY-y1);
  }
  
}