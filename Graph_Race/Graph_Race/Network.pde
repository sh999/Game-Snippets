class Network{
  int node_num;
  ArrayList nodes;
  Edge edge;
  
  Network(int node_num){
    this.node_num = node_num; 
    nodes = new ArrayList(node_num);
    for(int id = 0; id < node_num; id++){ //Create an array of nodes
      nodes.add(new Node(id));
    } 
    
    createEdges(1, 5);
    
  }
  
  void createEdges(int start, int end){
    edge = new Edge((Node)nodes.get(start),(Node)nodes.get(end));
      /*Node test1 = new Node(11); 
      Node test2 = new Node(12);
      edge = new Edge(test1, test2);*/
  }
  
  void draw(){
    edge.draw();
    fill(255);
    print (nodes.size());
    for(int i = 0; i < nodes.size(); i++){
      Node a = (Node)nodes.get(i);
      a.draw();
    }
  }  
}
