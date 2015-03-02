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
    maxSpeed = 6;
    gravity = 0.5;
    damping = 30;
  }
  void calcMove(){
    // dy = 0.5;
    // dy = dy +  gravity;
    /*if(dy > maxSpeed){
      dy = maxSpeed;
    }*/
    y += dy;
    dy = dy + 1;  //  Acceleration/gravity
    println("dy = " + dy);
  }
  void draw(){
    ellipse(x, y, diameter, diameter);
  }
}
