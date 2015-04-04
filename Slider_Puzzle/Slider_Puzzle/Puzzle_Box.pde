class PuzzleBox {
  Tile[] tiles;
  int rowAmt = 4; // # of tiles per row
  int emptyPosition = 15;
  int spacing = 55;

  PuzzleBox() {
    tiles = new Tile[16];
    for (int i = 0; i < tiles.length; i++) {
      tiles[i] = new Tile(int(i % rowAmt * spacing), int(i / 4) * spacing, i + 1); //Initialize each tile by x, y positions
    }  
    tiles[15].setColor(color(0), color(0)); // Set color of blank tile
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

  void swapTiles(int a, int b){
    float tempX, tempY;
    tempX = tiles[a].x;
    tempY = tiles[a].y;
    tiles[a].x = tiles[b].x;
    tiles[a].y = tiles[b].y;
    tiles[b].x = tempX;
    tiles[b].y = tempY;
  }

  int spacing(){
    return spacing;
  }

  int emptyPosition(){
    return emptyPosition;
  }

  void randomize(){
    int randomTileID1, randomTileID2;
    for(int i = 0; i <= 10; i++){
      randomTileID1 = int(random(0,15));
      randomTileID2 = int(random(0,15));
      swapTiles(randomTileID1, randomTileID2);
    }
  }

  boolean areAdjacent(Tile a, Tile b){
    boolean areAdjacent = false;
    // areAdjacent = true;
    return areAdjacent;
  }
}

