class Dot{
  int radius;
  int x, y;
  Dot(int x, int y){
    radius = 15;
    this.x = x;
    this.y = y;
    
    
  }
  void update(){
    fill(240,200,200);
    ellipse(x, y, radius, radius);
    
  }
}
