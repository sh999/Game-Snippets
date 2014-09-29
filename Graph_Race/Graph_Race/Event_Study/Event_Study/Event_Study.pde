/*
Event study
To practice network highlighting using simple shapes
In graph race, network contains nodes just like here
circlegroup contains circles
*/

CircleGroup circleGroup;
int circleNum;
Circle circle;
tempStatus status;
void setup(){
  size(400,400);
  background(0);
  circleNum = 5;
  circleGroup = new CircleGroup(circleNum); 
  circle = new Circle();
  status = tempStatus.START;
}

void draw(){
  
  if(status == tempStatus.START && dist(mouseX,mouseY,circle.x,circle.y) <= 50 ){
    circle.colorYellow();
  }
  else if(status == tempStatus.START){
    circle.colorRed();
  }
  else if(status == tempStatus.PRESSED){
    circle.colorBlue();
  }
}

void mousePressed(){
  if(status == tempStatus.START && dist(mouseX,mouseY,circle.x,circle.y) <= 50){ 
    print ("pressed");
    status = tempStatus.PRESSED;
  }
}


class Circle{
  float x, y;
  Circle(){
    x = random(width);
    y = random(height);
  }
  void draw(){
    ellipse(x,y,100,100);
  }
  void colorRed(){
    fill(255,0,0);
    this.draw();
  }
  void colorYellow(){
    fill(255,255,0);
    this.draw();
  }
  void colorBlue(){
    fill(0,0,255);
    this.draw();
  }
}

class CircleGroup{
  CircleGroup(int a){
  }
  void draw(){
  }
  
}


