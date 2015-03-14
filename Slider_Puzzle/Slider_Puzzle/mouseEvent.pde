class MouseEvent{
  Tile[] tiles;
  int[] someArray;
  
  MouseEvent(){
    tiles = new Tile[16];
    tiles = puzzleBox.getTiles();
  }

  int findSelectedTile(){
    float currentDistance, shortestDistance; // Difference between mouseX,Y and tileX,Y
    int closestTileID = 0;
    currentDistance = 0;
    shortestDistance = 100000;
    for(int i = 0; i < tiles.length; i++){
      currentDistance = dist(mouseX, mouseY, tiles[i].x+shiftX, tiles[i].y+shiftY);
      if(currentDistance < shortestDistance){
        shortestDistance = currentDistance;
        closestTileID = i;
      }
      println("i = "+i);
      println("dist = "+currentDistance);
    }
    println("Shortest distance = " + shortestDistance);
    println("Closest tile id = " + closestTileID);
    return closestTileID;
    /*
    Get mouseClick position
    Iterate through each tile
    Check if mouseClick is inside each tile
    */
  }
}
