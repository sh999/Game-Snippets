class Node{
  int id;
  float x, y;
  float radius;
  float speed;
  Node(int id){
    this.id = id;
    x = random(0, width);
    y = random(0, height);
    radius = 40;
    speed = 0.5;
  
  }
  void draw(){
    moveNode();
    
    fill(255);
    
    ellipse(x, y, radius, radius);
    fill(255, 0, 0);
    text(id, x, y);
  
  }
  void moveNode(){
//    x = x + random(-speed,speed);
//    y = y + random(-speed,speed);
  }
}
