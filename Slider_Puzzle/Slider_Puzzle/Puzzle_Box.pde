class PuzzleBox {
  Tile[] tiles;
  int rowAmt = 4; // # of tiles per row
  int[] testArray;
  int emptyPosition = 15;

  PuzzleBox() {
    tiles = new Tile[16];
    for (int i = 0; i < tiles.length; i++) {
      tiles[i] = new Tile(int(i % rowAmt * 80), int(i / 4) * 80, i + 1); //Initialize each tile by x, y positions
    }  
    tiles[16] = new EmptyTile();
    testArray = new int[15];
    for(int i = 0; i < 15; i++){
      testArray[i] = i;
    }
  }

  void draw() {
    translate(shiftX, shiftY);
    for (int i = 0; i < tiles.length; i++) {
      tiles[i].draw();
    }
  }

  Tile[] getTiles(){
    return tiles;
  }

  void moveTile(int i){
    tiles[i].moveTile();    
  }
}

