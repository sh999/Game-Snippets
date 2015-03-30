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
int shiftX, shiftY;
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
  selecteDTileID = mouseEvent.findSelectedTile();
  puzzleBox.swapTiles(selecteDTileID, 15);
}


