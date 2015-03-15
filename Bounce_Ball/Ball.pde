class Ball{
  float x, y, dx, dy;
  int diameter;
  float maxSpeed, gravity;
  float damping;
  Ball(float x, float y){
    this.x = x;
    this.y = y;
    diameter = 20;
    dy = 3;
    dy = 0;
    maxSpeed = 6;
    gravity = 0.5;
    damping = 30;
  }
  private void calcMove(){
    dy = dy + 0.5;  //  Acceleration/gravity
    x += dx;
    y += dy;
  }
  
  float x(){
    return this.x;
  }
  
  float y(){
    return this.y;
  }

  void draw(){
    fill(240, 150, 90);
    ellipse(x, y, diameter, diameter);
  }
}
