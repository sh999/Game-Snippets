class MouseEvent{
  Tile[] tiles;
  MouseEvent(){
    tiles = new Tile[15];
    tiles = puzzleBox.getTiles();
  }
  void processEvent(){
     
    for(int i = 0; i < tiles.length; i++){
      print("hA");
    }
    
    /*
    Get mouseClic position
    Iterate through each tile
    Check if mouseClick is inside each tile
    */
  }
}
