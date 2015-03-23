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
Game game;

void setup(){
  rectMode(CENTER);
  ellipseMode(CENTER);
  noStroke();
  size(400, 1000);
  paddle = new Paddle(width/2, 350);
  ball = new Ball(width/2, 10);
  game = new Game(); // Manages game status
  collisionChecker = new CollisionChecker(game);
}

void draw(){
  print(game.state());
  if(game.state() == "Playing"){
    background(0, 10, 50);
    ball.calcMove();
    paddle.calcForce(); // The faster you move paddle, the more force it exerts on ball
    collisionChecker.calcCollision(ball, paddle);
    ball.draw();
    paddle.draw();
  }
  if(game.state() == "Game over"){
    print("game over");
    textSize(30);
    text("Game Over!", width/2, height/2);
  }
}

void mouseClicked(){  // Reset ball position
  ball.x = width/2;
  ball.y = 10;
  ball.dy = 0;
  ball.dx = 0;
}
