class Bullet{
	PVector direction;
	float x, y;
	float speed, diameter;
	Bullet(float x, float y, float angle){
		direction = new PVector();
		direction = PVector.fromAngle(angle);
		direction.normalize();
		this.x = x;
		this.y = y;
		speed = 5;
		diameter = 5;
	}

	void update(){
		stroke(250);
		pushMatrix();
		translate(width/2,height/2);
		direction.normalize();
		direction.setMag(4);
		line(0,0,direction.x,direction.y);
		popMatrix();
		noStroke();
		ellipse(x, y, diameter, diameter);
		println("bullet direction = " + direction.mag());
		x += direction.x;
		y += direction.y;
	}

	void setDirection(float a){
		direction = PVector.fromAngle(a);
	}

}
