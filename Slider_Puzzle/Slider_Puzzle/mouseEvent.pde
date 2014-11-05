class MouseEvent{
  Tile[] tiles;
  int[] someArray;
  
  MouseEvent(){
    tiles = new Tile[16];
    tiles = puzzleBox.getTiles();
    
    
  }
  void moveTileIfPossible(){
    float diffX, diffY; // Difference between mouseX,Y and tileX,Y
    for(int i = 0; i < tiles.length; i++){
      diffX = mouseX-tiles[i].x;
      diffY = mouseX-tiles[i].y;
      print("i = "+i+"\n");
      println("x - tile[i].x = "+(mouseX-tiles[i].x));
      println("y - tile[i].y = "+(mouseY-tiles[i].y));
    }
    
    /*
    Get mouseClick position
    Iterate through each tile
    Check if mouseClick is inside each tile
    */
  }
}
