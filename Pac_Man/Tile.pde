class Tile{
  int x, y, size, fillColor;
  Tile(int x, int y, int size){
    this.size = size;
    this.x = x * size;
    this.y = y * size;
    this.fillColor = color(0);
  }
  
  void drawTile(){
    rectMode(CENTER);
    fill(fillColor);
    stroke(255, 255, 0);
    rect(x, y, size, size);
  }
  
  void highlight(int row, int col){
  }
  
}
