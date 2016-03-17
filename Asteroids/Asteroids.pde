/*
Asteroids clone
*/
Shooter player;
int rockNum;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
ArrayList<Rock> rocks = new ArrayList<Rock>();
float bulletAngle;
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
  /*
  for(int i = bullets.size()-1; i >= 0; i--){
    // loops through each bullet and check for collision with each rock
    Bullet b = bullets.get(i);
    b.update();
    for(Rock r: rocks){
      checkCircleCollision(b, r);
    }
    if(b.dead() == true){
      bullets.remove(i);
    }
  }*/
  collision_detector.checkCollision(player.getBullets(), rocks);
}

void checkCircleCollision(Bullet b, Rock r){
  // Detect bullet-rock collision
  float bDiameter, rDiameter;
  bDiameter = b.getDiameter();
  rDiameter = r.getDiameter();
  PVector bPosition = b.getPosition();
  PVector rPosition = r.getPosition();
  float rbDistance = dist(bPosition.x, bPosition.y, rPosition.x, rPosition.y);
  // println("rbDistance = " + rbDistance);
  // println("rDiameter = " + rDiameter);
  if(rbDistance < rDiameter/2){
    // b.destroy();
    print("hit");
    // destroyRock(r);
  }
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
    bulletAngle = player.angle()-PI/2;
//    bullets.add(new Bullet(player.x(), player.y(), bulletAngle));
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
    

