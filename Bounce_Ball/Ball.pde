class Ball{
  float x, y, dx, dy;
  int diameter;
  float maxSpeed, gravity;
  Ball(float x, float y){
    this.x = x;
    this.y = y;
    diameter = 20;
    dy = 3;
    maxSpeed = 6;
    gravity = 1.05;
  }
  void calcMove(){
    println(dy);
    
    dy = dy + dy * gravity;
    if(dy > maxSpeed){
      dy = maxSpeed;
    }
    
    y += dy;
  }
  void draw(){
    ellipse(x, y, diameter, diameter);
  }
}
