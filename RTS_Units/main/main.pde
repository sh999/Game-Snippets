/*
Requirements: 
Draw circle units.
Allow rectangular select on units; indicate selected units as different colors.
Drag to move unit around.
*/
Unit unit1;
Unit unit2;
int clickX, clickY;
int releaseX, releaseY;
DragBox dragBox;
void setup(){
  background(0);
  size(500, 500);
  unit1 = new Unit(30, 50);
  unit2 = new Unit(122, 24);
  dragBox = new DragBox();
  unit1.dispProperties();
  unit2.dispProperties();
}
void draw(){
  background(0);
  if(mousePressed)
  {
    dragBox.updateCoordinates();
    dragBox.disp();
  }
  
  if(unit1.checkInsideRect(clickX, clickY, mouseX, mouseY, mousePressed)) unit1.changeColor();
  if(unit2.checkInsideRect(clickX, clickY, mouseX, mouseY, mousePressed)) unit2.changeColor();
  
  unit1.disp();
  unit2.disp();
}
void mousePressed()
{
  clickX = mouseX;
  clickY = mouseY;
}
void mouseReleased()
{
  background(0);
  dragBox.updateBottomRight(0,0);
}