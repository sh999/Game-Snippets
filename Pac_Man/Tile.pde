class Tile{
  int x, y, size;
  Tile(int x, int y, int size){
    this.size = size;
    this.x = x * size;
    this.y = y * size;
  }
  
  void drawTile(){
    println("x = " + x + " y = " + y + " size = " + size);
    noFill();
    stroke(255);
    rect(x, y, size, size);
  }
}
