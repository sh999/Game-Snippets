float x, y, dx, dy, tempX, tempY, d, grav;
boolean collision;
float nextY;
void setup(){
  size(400, 400);
  smooth();
  x = width/2;
  y = 0;
  d = 50;
  dy = 1;
  grav = 1.05;
  collision = false;
}

void draw(){
  background(0);
  ellipse(x, y, d, d);
  calcMove();
  checkCollision();
  updateMove();
  stroke(255);
  line(0, 300, width, 300);
}

void calcMove(){
  dy = dy + grav;
  nextY = y + dy;
}

void checkCollision(){
  if(nextY+d/2 > 300){
    collision = true;
  }
  else{
    collision = false;    
  }
}

void updateMove(){
  if(collision == false){
    y = nextY;
  }
  else{
    dy = dy * -1;
  }
}


