class Gameplay{ // Mediates user click interaction and directs animation of network
  Status status;
  int targetNodeID;
  boolean alreadySelectedOne;
  Gameplay(){
    status = Status.START;
  }
  void draw(){
    network.draw();
    switch (status){
      case START:
        if(status == Status.START && mouseOverNode() == true){
          network.setFirstNode(targetNodeID, "highlight");
        }
        else if(status == Status.START && mouseOverNode() == false){
          network.setFirstNode(targetNodeID, "no highlight");
        }
        break;
    }
//    animator.moveDown(network);
  }
  void mouseEvent(){
    if(mouseOverNode() == true && status == Status.START){
      network.setFirstNode(targetNodeID, "pressed");
      status = Status.FIRSTNODESET;
    }
  }
  boolean mouseOverNode(){
    float cursorX = mouseX;
    float cursorY = mouseY;
    for(int i = 0; i <= network.node_num; i++){ //Create an array of nodes
      Node n = network.getNode(i); 
      if(dist(cursorX,cursorY,n.x,n.y) <= n.radius){
        targetNodeID = n.id;
        print("highlight");
        return true;
      }
    } 
    return false;
  }
}


