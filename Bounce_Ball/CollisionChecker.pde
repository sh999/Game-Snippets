class CollisionChecker {
	CollisionChecker(){

	}
	void calcCollision(Ball b, Paddle p){
	  println("ball.dy = " + ball.dy);
	  // Check if ball hits paddle
	  if(ball.y+ball.diameter/2 > paddle.y-paddle.h/2
        && ball.x-ball.diameter/2 > paddle.x-paddle.w/2 && ball.x+ball.diameter/2 < paddle.x+paddle.w/2){
		ball.dy = ball.dy * 0.75; // Dampening
		ball.dy = -1 * ball.dy;	// Bounce/reverse direction
		ball.y = paddle.y-paddle.h/2-ball.diameter/2;  // Ensures ball bounces back 
	  	ball.dx = (ball.x - paddle.x)/10; // Change sideways angle of bounce
	  }
	  if(ball.y < 0){ // Reverse direction when hitting top wall
 		ball.y = ball.diameter/2;
 		ball.dy = -1 * ball.dy;
      }
      if(ball.x < 0 || ball.x > width){	// Controls bounce when hitting side walls
      	if(ball.x < 0) ball.x = ball.x/2;
      	else if(ball.x > width) ball.x = width-ball.x/2;
      	ball.dx = ball.dx * -1;
      }
    }  
}