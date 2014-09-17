/*Asteroids clone

*/
Shooter p1;
void setup(){
  size(500,500);
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
      p1.moveForward();
    }
    if(keyCode == LEFT){
      p1.angle -= 0.4;
    }
  }
}
    

