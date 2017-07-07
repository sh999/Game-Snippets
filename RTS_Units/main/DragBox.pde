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
  void updateCoordinates()
  {
    x1 = clickX;
    y1 = clickY;
  }
  void disp()
  {
    fill(0);
    stroke(255);
    rect(x1, y1, mouseX-x1, mouseY-y1);
  }
}