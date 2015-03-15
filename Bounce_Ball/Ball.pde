class Ball{
  float x, y, dx, dy;
  int diameter;
  float maxSpeed, gravity;
  float damping;
  BallTrail ballTrail;

  Ball(float x, float y){
    this.x = x;
    this.y = y;
    diameter = 20;
    dy = 3;
    dy = 0;
    maxSpeed = 6;
    gravity = 0.5;
    damping = 30;
    ballTrail = new BallTrail(this.x, this.y);

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
    fill(260, 160, 20);
    ellipse(x, y, diameter, diameter);
    drawTrail();
  }

  void drawTrail(){
    ballTrail.update(ball.x, ball.y);
  }

}
