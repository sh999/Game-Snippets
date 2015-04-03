/*Asteroids clone

Tasks:
Allow ship to turn while thrust is on
Bugs:
initial thrust causes ship to turn sideways
*/
Shooter p1;
Rock rock;
Bullet bullet;
void setup(){
  size(800,800,P2D);
  background(0);
  noStroke();
  p1 = new Shooter(width/2, height/2);
  rock = new Rock(55, height/2);
  bullet = new Bullet(width/2, height/2, 0);
  bullet.setDirection(p1.angle()-PI/2); // See if bullet can follow mouse
}

void draw(){
  background(0);
  rock.draw();
  p1.update();
  bullet.update();
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
    p1.shoot();
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
    

