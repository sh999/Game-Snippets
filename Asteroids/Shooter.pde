class Shooter{
  float x, y;
  float dx, dy;
  float speed, maxSpeed, speedX, speedY;
  float angle, moveDirection;
  float dAngle;
  float rotSpeed;
  boolean thrustOn;
  float thrustPower;
  float thrustX, thrustY;
  
  Shooter(float x, float y){
    this.x = x;
    this.y = y;
    this.thrustOn = false;
    dx = 0;
    dy = 0;
    speed = 0;
    thrustPower = 0;
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
    translate(x, y);
    rotate(angle);
    triangle(0,-10,7,20,-7,20);
    changeThrust();
    println("speed = "+ speed + "\tdx = " + dx + "\tdy = " + dy + "\tdirection = " + moveDirection + "\tangle = " + angle + "\tthrust power = " + thrustPower);
  } 
  
  void move(){
    if(thrustOn == true) moveDirection = angle; // move direction only is same as angle (where ship faces) if thrust is on. This allows ship to rotate freely if thrust is not on (spin in place)
    dy = speedY;
    dx = speedX;
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
    thrustPower = 0;
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

  void changeThrust(){ //Thrust
    if(thrustOn == true){
      thrustPower = thrustPower + 0.005;
    }
    thrustX = thrustPower * -sin(moveDirection+PI);
    thrustY = thrustPower * cos(moveDirection+PI);
    speedX = speedX + thrustX;
    speedY = speedY + thrustY;
    if(sqrt(speedX*speedX + speedY+speedY) > 5){
      speedX = speedX - thrustX;
      speedY = speedY - thrustY;
    }
  }  
}
