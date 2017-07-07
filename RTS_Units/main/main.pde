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
boolean drawNothing = true;

void setup(){
  background(0);
  size(500, 500);
  unit1 = new Unit(30, 50);
  unit2 = new Unit(122, 24);
  unit1.dispProperties();
  unit2.dispProperties();
}

void draw(){
  if(drawNothing == false)
  {
    background(0);
    fill(0);
    stroke(255);
    rect(clickX, clickY, mouseX-clickX, mouseY-clickY);
  }
  fill(255);
  unit1.disp();
  unit2.disp();
}

void mousePressed()
{
  drawNothing = false;
  clickX = mouseX;
  clickY = mouseY;
  print("\nClicX: " + clickX);
  print("\nClicY: " + clickY);
}

void mouseReleased()
{
  drawNothing = true;
  background(0);
}