class Gametracker{ // Called by Gameplay.draw().  Keeps track of edge that has been traveled
  int[] travelHistory;
  int prevNodeID;
  int[] nodeHealth;
  int[] edgeHealth;
  int score;
  int currentNodeID;
  int traveledEdge;
  Gametracker(){
    currentNodeID = -1;
    prevNodeID = -1;
//    print("currentNode id = "+currentNodeID);
  }
  
  void setCurrentNodeID(int id){
    int tempID = id;
//    print("temp id = "+tempID);
//    print("currentNode id = "+currentNodeID);
    if(tempID != currentNodeID){
      prevNodeID = currentNodeID;
      currentNodeID = tempID;
      findEdgeID(prevNodeID, currentNodeID, c_table);
    }
  }
 
  void findEdgeID(int a, int b, Connection_table c_table){
    traveledEdge = c_table.findEdgeID(a, b);
//      traveledEdge = 0;
  }
  void draw(){
//    println("prev node = "+prevNodeID);
//    println("current node = "+currentNodeID+"\n");
//    println("traveled ege = "+traveledEdge);    
  }
}
