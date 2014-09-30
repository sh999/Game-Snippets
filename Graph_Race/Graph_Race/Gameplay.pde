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
  
  void nothingSelectedMode(){ // When no node has been clicked
    if(mouseOverNode() == true){  // Mouseover behavior
      network.colorNode(mouseoverNodeID, highlightColor);
      neighborNodeIDs = c_table.getNeighbors(mouseoverNodeID);
      for(int i : neighborNodeIDs){
        network.colorNode(i, possibleMovesColor);
      }
    }
    else if(mouseOverNode() == false){ 
      network.clearColors(); 
    }
  }
  
  void nodeSelectedMode(){
    if(mouseOverNode() == true){  // Mouseover behavior
      network.colorNode(mouseoverNodeID, highlightColor);
    }
    else if(mouseOverNode() == false){ 
      network.clearColors(); 
    }
    
    network.colorNode(selectedNodeID, selectColor);
    neighborNodeIDs = c_table.getNeighbors(selectedNodeID);
    for(int i : neighborNodeIDs){ // Color neighbors of selected node
      network.colorNode(i, nextMovesColor);
    }    
  }

  void mouseEvent(){ // Handles mouse clicks
    switch (status){ // Depending on program status, determines behavior
      case NOTHINGSELECTED:
        if(mouseoverNodeID != -1){ // value other than indicates that cursor is over some node, so if cursor is clicked over a node, do this..
          status = Status.NODESELECTED;
          setSelectedNodeID(mouseoverNodeID);
        }
        break;
    }
  }

  boolean mouseOverNode(){ // Checks if cursor is over a node, also lets known what node is being cursored over by calling setMouseoverNodeID()
    for(int i = 0; i <= network.node_num; i++){ //Create an array of nodes
      Node n = network.getNode(i); 
      if(dist(mouseX,mouseY,n.x,n.y) <= n.radius){
        setMouseoverNodeID(n.id);
        return true;
      }
      else{
        setMouseoverNodeID(-1); //-1 ID = no ID referenced/null, or cursor is not over any node
      }
    } 
    return false;
  }
  void setMouseoverNodeID(int i){
    mouseoverNodeID = i;
  }
  void setSelectedNodeID(int i){
    selectedNodeID = i;
  }
}


