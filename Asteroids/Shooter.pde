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
    rotSpeed = 0.075;
    direction = angle;
  }
  
  void update(){
    
    dy = speed * cos(direction+PI);
    dx = speed * -sin(direction+PI);
//    dy = speed * cos(PI);
//    dx = speed * -sin(PI);
    println("angle = "+degrees(angle));
    println("dy = "+dy);
    println("dir = "+direction);
    x = x + dx;
    y = y + dy;
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
    
    
    angle = angle + dAngle;
    translate(x, y);
    
    rotate(angle);
    triangle(0,-10,7,20,-7,20);
  } 
  
  void thrust(){ //Thrust
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
