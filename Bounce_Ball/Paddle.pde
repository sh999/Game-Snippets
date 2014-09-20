class Paddle{
  float x, y;
  int w, h;
  Paddle(float x, float y){
    this.x = x;
    this.y = y;
    w = 100;
    h = 20;
  }
  void draw(){
    y = mouseY;
    x = mouseX;
    rect(x, y, w, h);
  }
}
