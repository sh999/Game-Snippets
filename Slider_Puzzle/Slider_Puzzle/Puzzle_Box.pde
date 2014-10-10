class Puzzle_Box {
  Tile[] tiles;
  int rowAmt = 4; // tiles per row
  Puzzle_Box() {
    tiles = new Tile[15];
    for (int i = 0; i < tiles.length; i++) {
      tiles[i] = new Tile(int(i%rowAmt*80), int(i/4)*80, i+1);
    } 
  }
  void draw() {
    for (int i = 0; i < tiles.length; i++) {
      tiles[i].adraw();
    }
  }
}

