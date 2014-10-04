/*Asteroids clone

Tasks:
Allow ship to turn while thrust is on
Bugs:
initial thrust causes ship to turn sideways
*/
Shooter p1;
void setup(){
  size(800,800);
  background(0);
  noStroke();
  p1 = new Shooter(width/2,height/2);
}

void draw(){
  background(0);
  p1.update();
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      p1.thrust(); //updates speed
    }
    if(keyCode == LEFT){
      p1.dAngle = -p1.rotSpeed;
    }
    else if(keyCode == RIGHT){
      p1.dAngle = p1.rotSpeed ;
    }
  }
}

void keyReleased(){
  p1.dAngle = 0;
  if(key == CODED){
    if(keyCode == UP){
      p1.direction = p1.angle;
    }
  }
}
    

