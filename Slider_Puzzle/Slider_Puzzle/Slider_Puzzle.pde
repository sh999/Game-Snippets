/* Slider puzzle
Emulate classic slider puzzle game
e.g.
http://en.wikipedia.org/wiki/Sliding_puzzle
*/
MouseEvent mouseEvent;
PuzzleBox puzzleBox;
PFont font;
void setup(){
  textAlign(CENTER);
  size(500,500);
  background(0);
  font = loadFont("Serif-20.vlw");
  mouseEvent = new MouseEvent();
  puzzleBox = new PuzzleBox();
}

void draw(){
  background(0);
  puzzleBox.draw();
}

void mouseReleased(){
  mouseEvent.processEvent();
}
