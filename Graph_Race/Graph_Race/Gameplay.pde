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
    statusDeterminator();
    edgeTracker.setCurrentNodeID(selectedNodeID);
//    println("traveled edge = "+edgeTracker.traveledEdge);
  }
  
  void statusDeterminator(){
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
      nodeColor.clearColors();
      nodeColor.colorNode(mouseoverNodeID, highlightColor);
      nodeColor.colorNeighbors(mouseoverNodeID, possibleMovesColor);  
    }
    else if(mouseOverNode() == false){ 
      nodeColor.clearColors();
    }
  }
  
  void nodeSelectedMode(){
    if(mouseOverNode() == true){  // Mouseover behavior
      nodeColor.clearColors();
      nodeColor.colorNode(mouseoverNodeID, highlightColor);
      nodeColor.colorNeighbors(mouseoverNodeID, possibleMovesColor);  
    }
    else if(mouseOverNode() == false){ 
      nodeColor.clearColors();
    }
    nodeColor.colorNode(selectedNodeID, selectColor);
    nodeColor.colorNeighbors(selectedNodeID, nextMovesColor);
  }

  void mousePressedEvent(){ // Handles mouse clicks
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
              nodeColor.clearColors();
              selectedNodeID = mouseoverNodeID;
            }
          }
        }
        break;
    }
  }
  
  void mouseReleasedEvent(){
    println("released");
    println("1)traveledEdge = "+edgeTracker.traveledEdge);
    if(edgeTracker.traveledEdge != -1){ 
      println("2)traveled Edge = "+edgeTracker.traveledEdge);
      println("decaying edge...");
      network.edgeDecay(edgeTracker.traveledEdge);
    }
    else println("not decaying");
      
  }

  boolean mouseOverNode(){ // Checks if cursor is over a node, also lets known what node is being cursored over by calling setMouseoverNodeID()
    boolean b = false;
    for(int i = network.node_num; i >= 0; i--){ //Create an array of nodes
      Node n = network.getNode(i); 
      if(dist(mouseX,mouseY,n.x,n.y) <= n.radius){
        setMouseoverNodeID(n.id); 
        b = true;
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


