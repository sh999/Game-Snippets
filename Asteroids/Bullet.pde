class Bullet{
	PVector direction;
	float x, y;
	float speed, diameter;
	float lifetime;
	boolean dead;
	Bullet(float x, float y, float angle){
		direction = new PVector();
		direction = PVector.fromAngle(angle);
		direction.normalize();
		this.x = x;
		this.y = y;
		speed = 5;
		diameter = 5;
		lifetime = 50;
		dead = false;
	}

	void update(){
		stroke(250);
		pushMatrix(); 	// Testing line vector drawing
		translate(width/2,height/2);
		direction.normalize();
		direction.setMag(4);
		line(0,0,direction.x,direction.y); 
		popMatrix();	// End test
		noStroke();
		ellipse(x, y, diameter, diameter);
		println("bullet direction = " + direction.mag());
		x += direction.x;
		y += direction.y;
		lifetime -= 1;
		if(lifetime < 0){
			dead = true;
		}
	}

	void setDirection(float a){
		direction = PVector.fromAngle(a);
	}

	boolean dead(){
		return dead;
	}

}
