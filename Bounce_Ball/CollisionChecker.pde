class CollisionChecker {
	Game g;
  CollisionChecker(Game g){
    this.g = g;
	}
	void calcCollision(Ball b, Paddle p){
	  // Check if ball hits paddle
	  if(ball.y > height){
      print("Game over");
      gameOver();
    }
    else if(ball.y+ball.diameter/2 > paddle.y-paddle.h/2
        && ball.x-ball.diameter/2 > paddle.x-paddle.w/2 && ball.x+ball.diameter/2 < paddle.x+paddle.w/2){
  		dampen();
  		reverseYDirection();
  		ball.y = paddle.y-paddle.h/2-ball.diameter/2;  // Ensures ball isn't inside paddle when bouncing
	  	ball.dx = (ball.x - paddle.x)/10; // Change sideways angle of bounce
  		println("ForceY = " + paddle.forceY);
  		ball.dy = ball.dy + (ball.dy * paddle.forceY);
      print("hey");	  
	  }
	  if(ball.y < 0){ // Bounce when hitting top
   		ball.y = ball.diameter/2;
   		reverseYDirection();
  		dampen();
    }
    else if(ball.y > height){ // Bounce when hitting bottom
    	ball.y = height - ball.diameter/2;
    	reverseYDirection();
  		dampen();
    }
    if(ball.x < 0 || ball.x > width){	// Bounce when hitting sides
    	if(ball.x < 0) ball.x = ball.diameter/2;
    	else if(ball.x > width) {
    		// ball.x = width-ball.x/2;
    		ball.x = width-(ball.diameter/2);
    	}
    	reverseXDirection();
    }
  }

  void dampen(){
  	ball.dy = ball.dy * 0.75; // Dampening
  }  

  void reverseYDirection(){
  	ball.dy = -1 * ball.dy;
  }

  void reverseXDirection(){
  	ball.dx = ball.dx * -1;
  }

  void gameOver(){
    g.state = "Game over";
  }
}