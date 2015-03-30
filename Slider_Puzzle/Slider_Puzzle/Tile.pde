class Tile{ // Individual tile object.  Contains drawing method for a given tile
  float x, y;
  float size;
  color boxColor;
  color numColor;
  int num;
  
  Tile(float x, float y, int num){
    this.x = x;
    this.y = y;
    this.num = num;
    size = 50;
    boxColor = color(255,244,3);
    numColor = color(255,0,0);
  }
  void draw(){
    fill(boxColor);
    rect(x, y, size, size);
    fill(numColor);
    text(num, x, y);
  }

  void moveTile(){
    x = x + 30;
  }

  void setColor(color boxColor, color numColor){
    this.boxColor = boxColor;
    this.numColor = numColor;
  }
}
