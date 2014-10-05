class Colorizer{
  int node_num;
  color[] node_fill_list;
  color[] edge_color_list;
  color highlightColor, selectColor, possibleMovesColor, nextMovesColor, defaultNodeColor;
  color edgeColor, edgeAlpha;
  Colorizer(int node_num){
    highlightColor = color(255, 0, 0);
    selectColor = color(0, 255, 0);
    possibleMovesColor = color(250,150,150);
    nextMovesColor = color(255,255,0);
    defaultNodeColor = color(255);
    edgeAlpha = 255;
    edgeColor = color(0,242,255, edgeAlpha);
    this.node_num = node_num;
    node_fill_list = new color[node_num+1];
    edge_color_list = new color[c_table.getPairNums()];
    for(int i = 0; i < c_table.getPairNums(); i++){
      edge_color_list[i] = edgeColor;
    }
    for(int i = 0; i <= node_num; i++){
      node_fill_list[i] = color(0,255,0);  //Set default node color
    }
  }
  void colorNode(int nodeID, color c){
    node_fill_list[nodeID] = c;
  }
  
  void colorNeighbors(int nodeID, color c){
    ArrayList<Integer> neighborNodeIDs;
    neighborNodeIDs = c_table.getNeighbors(nodeID);
    for(int i : neighborNodeIDs){
      node_fill_list[i] = c;
    }
  }
  
  void clearColors(){
    for(int id = 0; id <= node_num; id++){
      node_fill_list[id] = defaultNodeColor;
    }
  }
  
  color getNodeColor(int id){
    return node_fill_list[id];
  }
  color getEdgeColor(int id){
    return edge_color_list[id];
  }
  
  void edgeDecay(int edgeID){
    float a = alpha(edge_color_list[edgeID]); 
//    println("traveled edge = "+gametracker.traveledEdge);
    println("alpha = "+a);
    a = a - 5;
    print("edgeID = "+edgeID);
    print("decaying");
    edge_color_list[edgeID] = color(0,242,252,a); 
  }
  
}
