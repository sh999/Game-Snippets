class MouseEvent{
  Tile[] tiles;
  int[] someArray;
  MouseEvent(){
    tiles = new Tile[15];
    tiles = puzzleBox.getTiles();
    
    
  }
  void processEvent(){
     
    for(int i = 0; i < tiles.length; i++){
      print("hA");
    }
    
    /*
    Get mouseClick position
    Iterate through each tile
    Check if mouseClick is inside each tile
    */
  }
}
