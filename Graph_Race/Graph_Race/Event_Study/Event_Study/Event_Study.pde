/*
Event study
To practice network highlighting using simple shapes
In graph race, network contains nodes just like here
circlegroup contains circles
*/

CircleGroup circleGroup;
int circleNum;
Circle circle;
void setup(){
  size(400,400);
  background(0);
  circleNum = 5;
  circleGroup = new circleGroup(circleNum); 
}

void draw(){
}

class Circle{
  Circle(){
  }
  void draw(){
    ellipse(random(width),random(height),10,10);
}

class CircleGroup{
  Circle(){
  }
}
