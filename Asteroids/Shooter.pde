class Shooter{
  float x, y;
  float dx, dy;
  float speed, maxSpeed;
  float angle, moveDirection;
  float dAngle;
  float rotSpeed;
  boolean thrustOn;
  
  Shooter(float x, float y){
    this.x = x;
    this.y = y;
    this.thrustOn = false;
    dx = 0;
    dy = 0;
    speed = 0;
    maxSpeed = 4;
    angle = PI/2;
    dAngle = 0;
    rotSpeed = 0.075;
    moveDirection = angle;
  }
  
  void update(){
    move();
    screenWrap();
    angle = angle + dAngle;
    // moveDirection = angle;
    translate(x, y);
    rotate(angle);
    triangle(0,-10,7,20,-7,20);
    adjustSpeed();
    println("speed = "+ speed + "\tdx = " + dx + "\tdy = " + dy + "\tdirection = " + moveDirection);
  } 
  
  void move(){
    dy = speed * cos(moveDirection+PI);
    dx = speed * -sin(moveDirection+PI);
    x = x + dx;
    y = y + dy;
  }
  void rotateLeft(){
    p1.dAngle = -p1.rotSpeed;
  }

  void rotateRight(){
    p1.dAngle = p1.rotSpeed ;
  }

  void stopRotation(){
    p1.dAngle = 0;
  }

  void setThrustOn(){
    thrustOn = true;
  }
  
  void setThrustOff(){
    thrustOn = false;
  }

  void screenWrap(){
    if(x > width){
      x = width - x;
    }
    else if(x < 0){
      x = width + x;
    }
    if(y > height){
      y = y - height;
    }
    else if(y < 0){
      y = height - y;
    }
  }

  void adjustSpeed(){ //Thrust
    // println("thrusting");
    if (thrustOn == true) {
      if(speed == 0){
        speed = 0.2;
      }
      else{
        speed = speed * 2;
      }
      if(speed >= maxSpeed){
        speed = maxSpeed;
      }
    }
  }  
}
