class Gameplay{ // Mediates user click interaction and directs animation of network
  Status status;
  boolean alreadySelectedOne;
  int selectedNodeID, targetNodeID, mouseoverNodeID;
  ArrayList neighborNodeIDs;
  Gameplay(){
    status = Status.START;
    neighborNodeIDs = new ArrayList();
  }
  void draw(){
    network.draw();
    switch (status){ // Depending on program status, determines behavior
      case START:
        startMode();
        break;
      case FIRSTNODESET:
        firstNodeMode();
        break;
    }
//    println("mouse-over node id = "+mouseoverNodeID+"\tNeighboring node IDs = "+neighborNodeIDs);
  }
  
  void startMode(){ // When no node has been clicked
    if(mouseOverNode() == true){
//      network.setFirstNode(targetNodeID, "highlight");
//      selectedNodeID = targetNodeID;
      //network.colorSelectedNode(selectedNodeID);
      neighborNodeIDs = c_table.getNeighbors(mouseoverNodeID);
      print("\ntarget node ID = "+mouseoverNodeID);
    }
    else if(mouseOverNode() == false){
//      network.setFirstNode(targetNodeID, "no highlight");
//      network.clear
    }
  }
  
  void firstNodeMode(){
    
  }
  
  void checkFirstNodeSelect(){
    if(mouseOverNode() == true && status == Status.START){ // When a node is clicked for the first time
//      network.setFirstNode(targetNodeID, "pressed");
      status = Status.FIRSTNODESET;
    }
  }
  
  void mouseEvent(){ // Handles mouse clicks
    checkFirstNodeSelect();
  }

  boolean mouseOverNode(){ // Checks if cursor is over a node, also lets known what node is being cursored over by calling setMouseoverNodeID()
    for(int i = 0; i <= network.node_num; i++){ //Create an array of nodes
      Node n = network.getNode(i); 
      if(dist(mouseX,mouseY,n.x,n.y) <= n.radius){
        setMouseoverNodeID(n.id);
        return true;
      }
      else{
        setMouseoverNodeID(-1); //-1 ID = no ID referenced/null
        
      }
    } 
    return false;
  }
  void setMouseoverNodeID(int i){
    mouseoverNodeID = i;
  }
}


