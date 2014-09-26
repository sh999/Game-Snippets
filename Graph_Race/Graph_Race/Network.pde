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
    
    
    
    for(int i = 0; i < c_table.getPairNums(); i++){
      int node1 = c_table.getPair(i, "STARTNODE");
      int node2 = c_table.getPair(i, "ENDNODE"); 
      print(node1);
      print(node2);
      edges.add(new Edge((Node)nodes.get(node1),(Node)nodes.get(node2)));
    }
//    int bla = c_table.pairs.get(0);
//    print(c_table.pairs.get(0).a);
//         print(((Pairs)pairs.get(9)).b);
//      print("ha "+c_table.(Pairs)pairs.get(0));
//    createEdge(1, 5);

//    createAllEdges();
    
  }
  
  void createEdge(int start, int end){
    edge = new Edge((Node)nodes.get(start),(Node)nodes.get(end));
    /*Node test1 = new Node(11); 
    Node test2 = new Node(12);
    edge = new Edge(test1, test2);*/
    
  }
 
  void draw(){
    fill(255);
    for(int i = 0; i < nodes.size(); i++){
      Node a = (Node)nodes.get(i);
      a.draw();
    }
    for(int i = 0; i < edges.size(); i++){
      Edge e = (Edge)edges.get(i);
      e.draw();
    }
  }  
}
