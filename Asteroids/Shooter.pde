class Shooter{
  float x, y;
  float dx, dy;
  float speed, maxSpeed;
  float angle, direction;
  float dAngle;
  float rotSpeed;
  
  Shooter(float x, float y){
    this.x = x;
    this.y = y;
    dx = 0;
    dy = 0;
    speed = 0;
    maxSpeed = 4;
    angle = PI/2;
    dAngle = 0;
    rotSpeed = 0.3;
  }
  
  void update(){
    dy = speed * cos(direction+PI);
    dx = speed * -sin(direction+PI);
    
    x = x + dx;
    y = y + dy;
    angle = angle + dAngle;
    translate(x, y);
    
    rotate(angle);
    triangle(0,-10,7,20,-7,20);
  } 
  
  void moveForward(){ //Thrust
    if(speed == 0){
      speed = 1;
    }
    else{
      speed = speed * 2;
    }
    if(speed >= maxSpeed){
      speed = maxSpeed;
    }
  }  
}
