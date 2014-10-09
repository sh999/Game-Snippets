class Puzzle_Box {
  Piece[] pieces;
  Puzzle_Box() {
    pieces = new Piece[15];
    for (int i = 0; i < pieces.length; i++) {
      pieces[i] = new Piece(int(i/4)*50, int(i/4)*50, 1);
    } 
  }
  
  void draw() {

    for (int i = 0; i < pieces.length; i++) {
      pieces[i].adraw();
    }
  }
}

