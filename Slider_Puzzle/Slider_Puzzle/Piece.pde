class Piece{
  float x, y;
  float size;
  float col;
  int num;
  Piece(float x, float y, int num){
    this.x = x;
    this.y = y;
    this.num = num;
    size = 50;
    col = color(255,244,3);
  }
  void adraw(){
    rect(x, y, size, size);
    
  }
}
