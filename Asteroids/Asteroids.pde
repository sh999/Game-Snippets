/*
Asteroids clone
*/
Shooter p1;
int rockNum;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Rock> rocks = new ArrayList<Rock>();
float bulletAngle;
void setup(){
  size(800,800,P2D);
  background(0);
  noStroke();
  p1 = new Shooter(width/2, height/2);
  rockNum = 10;
  for(int i = 0; i < rockNum; i++){
    rocks.add(new Rock(random(0, width), random(0, height)));
  }
}

void draw(){
  background(0);
  p1.update();
  for(Rock r: rocks){
    r.draw();
  }
  for(int i = bullets.size()-1; i >= 0; i--){
    Bullet b = bullets.get(i);
    b.update();
    if(b.dead() == true){
      bullets.remove(i);
    }
  }

}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      p1.setThrustOn(); //updates speed
    }
    if(keyCode == LEFT){
      p1.rotateLeft();
    }
    else if(keyCode == RIGHT){
      p1.rotateRight();
    }
  }
  else if(key == ' '){
    // p1.shoot();
    bulletAngle = p1.angle()-PI/2;
    bullets.add(new Bullet(p1.x(), p1.y(), bulletAngle));
  }
}

void keyReleased(){
  p1.stopRotation();
  if(key == CODED){
    if(keyCode == UP){
      p1.setThrustOff();
    }
  }
}
    

