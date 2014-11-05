/* Slider puzzle
Emulate classic slider puzzle game
e.g.
http://en.wikipedia.org/wiki/Sliding_puzzle
11/4/14: Implement moving tile to empty space
  Check what tile was clicked
*/
MouseEvent mouseEvent;
PuzzleBox puzzleBox;
PFont font;
void setup(){
  textAlign(CENTER);
  size(500,500);
  background(0);
  font = loadFont("Serif-20.vlw");
  
  puzzleBox = new PuzzleBox();
  mouseEvent = new MouseEvent();

  
}

void draw(){
  background(0);
  puzzleBox.draw();
}

void mouseReleased(){
  mouseEvent.moveTileIfPossible();
}


