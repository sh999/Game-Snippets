class Shooter{
  float x, y;
  float dx, dy;
  float speed, maxSpeed;
  float angle;
  
  Shooter(float x, float y){
    this.x = x;
    this.y = y;
    dx = 0;
    dy = 0;
    speed = 0;
    maxSpeed = 4;
    angle = PI/2;
  }
  
  void update(){
    x = x + speed;;
    y = y + dy;

    translate(x, y);
        rotate(angle);
    triangle(0,10,7,30,-7,30);
  } 
  
  void moveForward(){
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
