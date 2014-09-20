/*
Gameplay:  
Ball obeys gravity
Player uses paddle to let ball bounce
Game over when ball falls to bottom
Score keeps track of # of bounces
*/
Paddle paddle;
Ball ball;
void setup(){
  rectMode(CENTER);
  noStroke();
  size(400, 400);
  background(0);
  paddle = new Paddle(width/2, 350);
  ball = new Ball(width/2, 0);
}

void draw(){
  background(0);
  ball.calcMove();
  checkCollision(ball, paddle);
  ball.draw();
  paddle.draw();
  
}

void checkCollision(Ball ball, Paddle paddle){
  if(ball.y+ball.diameter/2 > paddle.y-paddle.h/2
     && ball.x-ball.diameter/2 > paddle.x-paddle.w/2 && ball.x+ball.diameter/2 < paddle.x+paddle.w/2){
    ball.dy = -1*ball.dy;
  }
}
