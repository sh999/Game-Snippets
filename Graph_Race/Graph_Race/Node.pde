class Node{
  int id;
  float x, y;
  float radius;
  float speed;
  color node_fill, def_node_fill;
  color node_stroke, def_node_stroke;
  Node(int id){
    this.id = id;
    x = random(0, width);
    y = random(0, height);
    radius = 20;
    speed = 0.5;
    def_node_fill = color(255);
    def_node_stroke = color(193, 197, 214);
    node_fill = def_node_fill;
    node_stroke = def_node_stroke;
  }
  void draw(){
    moveNode();
    colorNode();    
  }
  void moveNode(){
    x = x + random(-speed,speed);
    y = y + random(-speed,speed);
  }
  void colorNode(){
    /*if(dist(x, y, mouseX, mouseY) <= radius){ // Color node when mouse is over it
      node_stroke = color(255,255,0);
    }
    else {
      node_stroke = def_node_stroke;
    }*/
    fill(node_fill);
    stroke(node_stroke);
    ellipse(x, y, radius*2, radius*2);
    fill(255, 0, 0);
    text(id, x, y);
  }
  
}
