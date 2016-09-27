/*
Asteroids clone
*/
Shooter player;  // human controlled spaceship that can shoot
int rockNum;     // # of asteroids
ArrayList<Rock> rocks = new ArrayList<Rock>();
CollisionDetector collision_detector = new CollisionDetector();

void setup(){
  ellipseMode(CENTER);
  size(800,800,P2D);
  background(0);
  noStroke();
  player = new Shooter(width/2, height/2);
  rockNum = 1;
  for(int i = 0; i < rockNum; i++){
    rocks.add(new Rock(random(0, width), random(0, height)));
  }
}

void draw(){
  background(0);
  player.update();
  for(Rock r: rocks){
    r.update();
  }
  collision_detector.checkCollision(player.getBullets(), rocks);
}


void destroyBullet(Bullet b){

}

void destroyRock(Rock r){

}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      player.setThrustOn(); //updates speed
    }
    if(keyCode == LEFT){
      player.rotateLeft();
    }
    else if(keyCode == RIGHT){
      player.rotateRight();
    }
  }
  else if(key == ' '){
    player.shoot();
  }
}

void keyReleased(){
  player.stopRotation();
  if(key == CODED){
    if(keyCode == UP){
      player.setThrustOff();
    }
  }
}
    