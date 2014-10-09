/* Slider puzzle
Emulate classic slider puzzle game
e.g.
http://en.wikipedia.org/wiki/Sliding_puzzle
*/
Puzzle_Box puzzleBox = new Puzzle_Box();
PFont font;
void setup(){
  size(500,500);
  background(0);
  font = loadFont("Serif-20.vlw");
}

void draw(){
  background(0);
  puzzleBox.draw();
  
}
