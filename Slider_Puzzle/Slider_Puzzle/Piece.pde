class Tile{
  float x, y;
  float size;
  float col;
  int num;
  Tile(float x, float y, int num){
    this.x = x;
    this.y = y;
    this.num = num;
    size = 50;
    col = color(255,244,3);
  }
  void adraw(){
    
    fill(255);
    rect(x, y, size, size);
    fill(255,0,0);
    text(num, x+size/2, y+size/2);
  }
}
