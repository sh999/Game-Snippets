class Gameplay{ // Mediates user click interaction and directs animation of network
  Status status;
  boolean alreadySelectedOne;
  int selectedNodeID; 
  int targetNodeID;
  int mouseoverNodeID;  // What node the mouse is pointing to
  color highlightColor, selectColor, possibleMovesColor, nextMovesColor;
  ArrayList<Integer> neighborNodeIDs;
  Gameplay(){
    status = Status.NOTHINGSELECTED;
    neighborNodeIDs = new ArrayList<Integer>();
    highlightColor = color(255, 0, 0);
    selectColor = color(0, 255, 0);
    possibleMovesColor = color(250,150,150);
    nextMovesColor = color(255,255,0);
  }
  
  void draw(){
    network.draw();
    switch (status){ // Depending on program status, determines behavior
      case NOTHINGSELECTED:
        nothingSelectedMode();
        break;
      case NODESELECTED:
        nodeSelectedMode();
        break;
    }
  }
  
  void colorNode(int nodeID, color c){
    network.colorNode(nodeID, c);
  }
  
  void colorNeighbors(int nodeID, color c){
    neighborNodeIDs = c_table.getNeighbors(nodeID);
    for(int i : neighborNodeIDs){
      network.colorNode(i, c);
    }
  }
  
  void clearColors(){
    network.clearColors();
  }
  
  void nothingSelectedMode(){ // When no node has been clicked
    if(mouseOverNode() == true){  // Mouseover behavior
      clearColors();
      colorNode(mouseoverNodeID, highlightColor);
      colorNeighbors(mouseoverNodeID, possibleMovesColor);  
    }
    else if(mouseOverNode() == false){ 
      clearColors();
    }
    println("mouse over node = "+mouseoverNodeID);
  }
  
  void nodeSelectedMode(){
    if(mouseOverNode() == true){  // Mouseover behavior
      clearColors();
      colorNode(mouseoverNodeID, highlightColor);
      colorNeighbors(mouseoverNodeID, possibleMovesColor);  
    }
    else if(mouseOverNode() == false){ 
      clearColors();
    }
    colorNode(selectedNodeID, selectColor);
    colorNeighbors(selectedNodeID, nextMovesColor);
  }

  void mouseEvent(){ // Handles mouse clicks
    switch (status){ // Depending on program status, determines behavior
      case NOTHINGSELECTED:
        if(mouseoverNodeID != -1){ // value other than indicates that cursor is over some node, so if cursor is clicked over a node, do this..
          status = Status.NODESELECTED;
          setSelectedNodeID(mouseoverNodeID);
        }
        break;
      case NODESELECTED:
        if(mouseoverNodeID != -1){ // value other than indicates that cursor is over some node, so if cursor is clicked over a node, do this..
          neighborNodeIDs = c_table.getNeighbors(selectedNodeID);  
          for(int i : neighborNodeIDs){
            if(mouseoverNodeID == i){
              clearColors();
              selectedNodeID = mouseoverNodeID;
            }
          }
        }
        break;
    }
  }

  boolean mouseOverNode(){ // Checks if cursor is over a node, also lets known what node is being cursored over by calling setMouseoverNodeID()
    boolean b = false;
    for(int i = network.node_num; i >= 0; i--){ //Create an array of nodes
      Node n = network.getNode(i); 
//      println("node id = "+n.id);
      if(dist(mouseX,mouseY,n.x,n.y) <= n.radius){
//        print(" match");
        setMouseoverNodeID(n.id); 
        b = true;
//        return true;
        break;
      }
      else{
        setMouseoverNodeID(-1); //-1 ID = no ID referenced/null, or cursor is not over any node
      }
    } 
    return b;
  }
  
  void setMouseoverNodeID(int i){
    mouseoverNodeID = i;
  }
  
  void setSelectedNodeID(int i){
    selectedNodeID = i;
  }
}


