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
    // dy = 0.5;
    // dy = dy +  gravity;
    /*if(dy > maxSpeed){
      dy = maxSpeed;
    }*/
    y += dy;
    dy = dy + 0.5;  //  Acceleration/gravity
    x += dx;
  }
  
  float x(){
    return this.x;
  }
  
  float y(){
    return this.y;
  }

  void draw(){
    ellipse(x, y, diameter, diameter);
  }
}
