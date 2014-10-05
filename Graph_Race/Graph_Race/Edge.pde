class Edge{
  Node start_node, end_node;
  color edge_stroke;
  int id;
  
  int health;

  Edge(int id, Node start_node, Node end_node){
    this.start_node = start_node;
    this.end_node = end_node;
    this.id = id;
    edge_stroke = color(0,242,255);
    
    health = 100;
  }
  void decreaseHealth(){
    health = health - 20;
  }
  
  
  
  void draw(){
//    edge_stroke = n_modifier.getColor(id);
    stroke(0);
    strokeWeight(7);
    line(start_node.x, start_node.y, end_node.x, end_node.y);
    stroke(edge_stroke);
    strokeWeight(5);
    line(start_node.x, start_node.y, end_node.x, end_node.y);

  }
  
}

