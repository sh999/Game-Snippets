class Edge{
  Node start_node, end_node;
  color edge_stroke;
  int id;
  
  int health;
  PVector point1 = new PVector();
  PVector point2 = new PVector();
  PVector point3 = new PVector();
  PVector midpoint = new PVector();
  Edge(int id, Node start_node, Node end_node){
    this.start_node = start_node;
    this.end_node = end_node;
    this.id = id;
    edge_stroke = color(0,242,255);
    
    health = 100;
    
    point1 = new PVector();
    point2 = new PVector();
    point3 = new PVector();
    
    point1.set(start_node.x, start_node.y);

    
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
    
    
    
    point2.set(end_node.x, end_node.y);
    midpoint = PVector.sub(point1, point2);
    midpoint.div(2);
    midpoint = PVector.add(midpoint, point2);

    fill(200,9,9);
    text(health, midpoint.x, midpoint.y);
    
  }
  
  
}

