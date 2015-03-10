class CollisionChecker {
	CollisionChecker(){

	}
	void calcCollision(Ball b, Paddle p){
	  if(ball.y+ball.diameter/2 > paddle.y-paddle.h/2
        && ball.x-ball.diameter/2 > paddle.x-paddle.w/2 && ball.x+ball.diameter/2 < paddle.x+paddle.w/2){
		ball.dy = ball.dy * 0.75; // Dampening
    	println("collide");
	    if(ball.dy > 0){
       	  ball.dy = -1 * ball.dy; // Bounce direction
	      ball.dy = ball.dy * paddle.forceY;
		}
	  }
	  if(ball.y < 0){ // Reverse direction when hitting wall
 		ball.dy = -1 * ball.dy;
      }
    }  
}