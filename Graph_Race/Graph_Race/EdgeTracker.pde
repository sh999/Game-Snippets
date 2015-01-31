class EdgeTracker{ // Called by Gameplay.draw().  Keeps track of edge that has been traveled
  int[] travelHistory;
  int prevNodeID;
  int[] nodeHealth;
  int[] edgeHealth;
  int score;
  int currentNodeID;
  int traveledEdge;
  EdgeTracker(){
    currentNodeID = -1;
    prevNodeID = -1;
  }
  
  void setCurrentNodeID(int id){  // Sets in memory node that was just selected and the previous node selected.  
                                  // Calls another function that returns the edge traveled between these two nodes
                                  // Called by gameplay.draw()
    int tempID = id;

    if(tempID != currentNodeID){
      prevNodeID = currentNodeID;
      currentNodeID = tempID;
      traveledEdge = c_table.findEdgeID(prevNodeID, currentNodeID);
    }
  }
 
 
  void draw(){
   
  }
}
