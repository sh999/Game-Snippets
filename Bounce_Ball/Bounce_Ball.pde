/*
Gameplay:  
Ball obeys gravity
Player uses paddle to let ball bounce
Game over when ball falls to bottom
Score keeps track of # of bounces

Tasks:

*/
Paddle paddle;
Ball ball;
void setup(){
  rectMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
  size(400, 1000);
  background(0);
  paddle = new Paddle(width/2, 350);
  ball = new Ball(width/2, 10);
}
void draw(){
  background(0);
  ball.calcMove();
  paddle.calcForce();
  checkCollision(ball, paddle);
  ball.draw();
  paddle.draw();
}
void checkCollision(Ball ball, Paddle paddle){
  if(ball.y+ball.diameter/2 > paddle.y-paddle.h/2
     && ball.x-ball.diameter/2 > paddle.x-paddle.w/2 && ball.x+ball.diameter/2 < paddle.x+paddle.w/2){
    ball.dy = ball.dy * 0.75; // Dampening
    
    if(ball.dy > 0){
      ball.dy = -1 * ball.dy; // Bounce direction
      ball.dy = ball.dy * paddle.forceY;
    }
  }
  if(ball.y < 0){ // Reverse direction when hitting wall
    ball.dy = -1 * ball.dy;
  }
}
