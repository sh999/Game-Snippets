class Network{
  int node_num;
  ArrayList nodes;
  Edge edge;
  ArrayList edges;
  Network(int node_num){
    this.node_num = node_num; 
    nodes = new ArrayList(node_num);
    edges = new ArrayList();
    for(int id = 0; id <= node_num; id++){ //Create an array of nodes
      nodes.add(new Node(id));
    } 
    for(int i = 0; i < c_table.getPairNums(); i++){ //Create all edges
      int node1 = c_table.getPair(i, "STARTNODE");
      int node2 = c_table.getPair(i, "ENDNODE"); 
      edges.add(new Edge(i, (Node)nodes.get(node1),(Node)nodes.get(node2)));
    }
  }
  /*void createEdge(int start, int end){ // Create individual edge
    edge = new Edge(i,(Node)nodes.get(start),(Node)nodes.get(end));
  }*/
  void draw(){
    fill(255);
    draw_edges();
    draw_nodes();
  }
  void draw_nodes(){
    for(int id = 0; id < nodes.size(); id++){
      Node n = (Node)nodes.get(id);
      n.node_fill = nodeColor.getNodeColor(id);
      n.draw();
    }
  }
  void draw_edges(){
    for(int i = 0; i < edges.size(); i++){
      Edge e = (Edge)edges.get(i);
      e.edge_stroke = colorizer.getEdgeColor(i);
      e.draw();
    }
  }
  Node getNode(int id){
    Node a = (Node)nodes.get(id);
    return a;
  }  
  void colorNode(int id, color c){
    Node n = (Node)nodes.get(id);
    n.node_fill = c;
  }
  void edgeDecay(int id){
    Edge e = (Edge)edges.get(id);
    e.decreaseHealth();
    println("Edge = "+id);
    println("edge health = "+e.health);
  
  }
}
