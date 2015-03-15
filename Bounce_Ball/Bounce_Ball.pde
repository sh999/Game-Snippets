/*
Gameplay:  
Ball obeys gravity
Player uses paddle to let ball bounce
Game over when ball falls to bottom
Score keeps track of # of bounces

Tasks:


Progress:
*/
Paddle paddle;
Ball ball;
CollisionChecker collisionChecker;
void setup(){
  rectMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
  size(400, 1000);
  paddle = new Paddle(width/2, 350);
  ball = new Ball(width/2, 10);
  collisionChecker = new CollisionChecker();
}

void draw(){
  background(0, 10, 50);
  ball.calcMove();
  paddle.calcForce();
  collisionChecker.calcCollision(ball, paddle);
  ball.draw();
  paddle.draw();
}

void mouseClicked(){
  ball.x = width/2;
  ball.y = 10;
  ball.dy = 0;
}
