/*Asteroids clone

Tasks:
Allow ship to turn while thrust is on
Bugs:
initial thrust causes ship to turn sideways
*/
Shooter p1;
Rock rock;
void setup(){
  size(800,800,P2D);
  background(0);
  noStroke();
  p1 = new Shooter(width/2, height/2);
  rock = new Rock(width/2, height/2);
}

void draw(){
  background(0);
  rock.drawRock();

  p1.update();
  ellipse(width/2,height/2,33,33);
  beginShape();
  vertex(200,200);
  vertex(10,0);
  vertex(10,20);
  vertex(3,4);
  endShape(CLOSE);
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      p1.setThrustOn(); //updates speed
      // print("thrussssst");
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
    

