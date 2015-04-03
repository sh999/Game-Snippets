/*Asteroids clone

Tasks:
Allow ship to turn while thrust is on
Bugs:
initial thrust causes ship to turn sideways
*/
Shooter p1;
Rock rock;
// Bullet bullet;
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
float bulletAngle;
void setup(){
  size(800,800,P2D);
  background(0);
  noStroke();
  p1 = new Shooter(width/2, height/2);
  rock = new Rock(55, height/2);
  bullets.add(new Bullet(width/2, height/2, 0));
  // bullet = new Bullet(width/2, height/2, 0);
  // bullet.setDirection(p1.angle()-PI/2); // See if bullet can follow mouse
}

void draw(){
  background(0);
  rock.draw();
  p1.update();
  for(int i = bullets.size()-1; i >= 0; i--){
    Bullet b = bullets.get(i);
    b.update();
    if(b.dead() == true){
      bullets.remove(i);
    }
  }
  ellipse(111,height/2,33,33);
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
    

