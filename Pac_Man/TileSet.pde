class TileSet{
  int tileSize, setSize, squaresInRow;
  Tile[] t;
  TileSet(int tileSize, int setSize){
    this.tileSize = tileSize;
    this.setSize = setSize;
    this.squaresInRow = setSize / tileSize;
    t = new Tile[64];
    int n = 0;
    for(int i = 0; i < squaresInRow; i++){
      for(int j = 0; j < squaresInRow; j++){
        t[n] = new Tile(j, i, tileSize);
        n = n + 1;
      }
    }
  }
  
  void colorTile(int x, int y, color c){
    /*
    x and y are tile coordinates to be colored
    */
  }

  void update(){
    int n = 0;
    for(int i = 0; i < squaresInRow; i++){
      for(int j = 0; j < squaresInRow; j++){
        t[n].drawTile();
        n = n + 1;
      }
    }
  }
}
