class Edge{
  Node start_node, end_node;
  Edge(Node start_node, Node end_node){
    this.start_node = start_node;
    this.end_node = end_node;
  }
  void draw(){
    stroke(0,242,255);
    strokeWeight(5);
    line(start_node.x, start_node.y, end_node.x, end_node.y);
  }
}

