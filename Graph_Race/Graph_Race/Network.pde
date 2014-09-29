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
      edges.add(new Edge((Node)nodes.get(node1),(Node)nodes.get(node2)));
    }
  }
  void createEdge(int start, int end){ // Create individual edge
    edge = new Edge((Node)nodes.get(start),(Node)nodes.get(end));
  }
  void draw(){
    fill(255);
    draw_edges();
    draw_nodes();
  }
  void draw_nodes(){
    for(int i = 0; i < nodes.size(); i++){
      Node n = (Node)nodes.get(i);
      n.draw();
    }
  }
  void draw_edges(){
    for(int i = 0; i < edges.size(); i++){
      Edge e = (Edge)edges.get(i);
      e.draw();
      
    }
  }
  Node getNode(int id){
    Node a = (Node)nodes.get(id);
    return a;
  }  
  void setFirstNode(int i, String s){ //Colors first node set by gameplay
    color c = color(0);
    if(s == "highlight"){ // Mouse cursor over
      c = color(250,250,70);
    }
    else if (s == "no highlight"){ // Mouse leaves
      c = ((Node)nodes.get(i)).def_node_fill;
    }
    else if (s == "pressed"){
      c = color(0,250,0);
    }
    ((Node)nodes.get(i)).node_fill = c;
    
  }
}
