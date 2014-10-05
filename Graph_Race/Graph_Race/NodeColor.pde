class NodeColor{
  color highlightColor, selectColor, possibleMovesColor, nextMovesColor, defaultNodeColor;
  color[] node_fill_list;
  int node_num;

  NodeColor(int node_num){
    highlightColor = color(255, 0, 0);
    selectColor = color(0, 255, 0);
    possibleMovesColor = color(250,150,150);
    nextMovesColor = color(255,255,0);
    defaultNodeColor = color(255);


    this.node_num = node_num;
    node_fill_list = new color[node_num+1];

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
}
