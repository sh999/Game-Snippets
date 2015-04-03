class Shooter{
  float x, y;
  float dx, dy;
  float maxSpeed;
  float angle, moveDirection;
  float dAngle;
  float rotSpeed;
  boolean thrustOn;
  float thrustPower;
  float thrustX, thrustY;
  float currentSpeed;
  
  Shooter(float x, float y){
    this.x = x;
    this.y = y;
    this.thrustOn = false;
    dx = 0;
    dy = 0;
    thrustPower = 0;
    maxSpeed = 3;
    angle = PI/2;
    dAngle = 0;
    rotSpeed = 0.075;
    moveDirection = angle;
  }
  
  void update(){
    move();
    angle = angle + dAngle;
    pushMatrix();
    translate(x, y);
    rotate(angle);
    drawShip();
    popMatrix();
    changeThrust();
    screenWrap();
    // println("speed = "+ speed + "\tdx = " + dx + "\tdy = " + dy + "\tdirection = " + moveDirection + "\tangle = " + angle + "\tthrust power = " + thrustPower);
  } 

  void drawShip(){
    triangle(0,-10,7,20,-7,20);
  }
  
  void move(){
    if(thrustOn == true) moveDirection = angle; // Move direction only is same as angle (where ship faces) if thrust is on. This allows ship to rotate freely if thrust is not on (spin in place)
    x = x + dx;
    y = y + dy;
  }

  void changeThrust(){
    /* Mechanic: When user pressed up, it turns thrust on
    The longer 'up' is pressed, the larger the thrust vector
    Thrust adds to increase speed
    */
    if(thrustOn == true){
      thrustPower = thrustPower + 0.005;
    }
    thrustX = thrustPower * -sin(moveDirection + PI);
    thrustY = thrustPower * cos(moveDirection + PI);
    dx = dx + thrustX;
    dy = dy + thrustY;
    currentSpeed = sqrt(dx * dx + dy * dy);
    if(currentSpeed > maxSpeed){  // Ensures thrust has no effect if max speed is reached by negating movement calculation
      dx = dx - thrustX;
      dy = dy - thrustY;
    }
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

  float angle(){
    return angle;
  }

  float x(){
    return x;
  }

  float y(){
    return y;
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

  void shoot(){

  }

   
}
