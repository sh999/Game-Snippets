/* Slider puzzle
Emulate classic slider puzzle game
e.g.
http://en.wikipedia.org/wiki/Sliding_puzzle
11/4/14: Implement moving tile to empty space
  Check what tile was clicked. Done (3/14/15)
  Shift the clicked tile to empty space
*/
MouseEvent mouseEvent;
PuzzleBox puzzleBox;
PFont font;
int selecteDTileID;
int shiftX, shiftY; // Shift the entire puzzle field
void setup(){
  textAlign(CENTER);
  rectMode(CENTER);
  size(500,500);
  background(0);
  font = loadFont("Serif-20.vlw");
  puzzleBox = new PuzzleBox();
  mouseEvent = new MouseEvent();
  shiftX = 40;
  shiftY = 40;
}

void draw(){
  background(0);
  puzzleBox.draw();
}

void mouseReleased(){
  selecteDTileID = mouseEvent.findSelectedTile(mouseX, mouseY);
  int spacing = puzzleBox.spacing();
  int toRightID, toLeftID, belowID, aboveID;
  toRightID = mouseEvent.findSelectedTile(mouseX + spacing, mouseY);
  toLeftID = mouseEvent.findSelectedTile(mouseX - spacing, mouseY);
  belowID = mouseEvent.findSelectedTile(mouseX, mouseY + spacing);
  aboveID = mouseEvent.findSelectedTile(mouseX, mouseY - spacing);
  println("selected id = " + selecteDTileID);
  println("to right id = " + toRightID);
  println("to left id = " + toLeftID);
  println("below id = " + belowID);
  println("above id = " + aboveID);
  puzzleBox.swapTiles(selecteDTileID, 15);
}


