class Network{
  int node_num;
  ArrayList nodes;
  
  Network(int node_num){
    this.node_num = node_num; 
    nodes = new ArrayList(node_num);
    for(int id = 0; id < node_num; id++){ //Create an array of nodes
      nodes.add(new Node(id));
    } 
    createEdges(1, 5);
    
  }
  
  void createEdges(int start, int end){
        
      
  }
  
  void draw(){
    for(int i = 0; i < nodes.size(); i++){
      Node a = (Node)nodes.get(i);
      a.draw();
    }
  }  
}
