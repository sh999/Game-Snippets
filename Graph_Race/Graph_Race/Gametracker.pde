class Gametracker{
  int[] travelHistory;
  int prevNodeID;
  int[] nodeHealth;
  int[] edgeHealth;
  int score;
  int currentNodeID;
  
  Gametracker(){
    currentNodeID = -1;
    prevNodeID = -1;
  }
  
  void setCurrentNodeID(int id){
    int tempID = id;
    if(tempID != currentNodeID){
      prevNodeID = currentNodeID;
      currentNodeID = tempID;
      findEdgeID(prevNodeID, currentNodeID);
    }
  }
  void findEdgeID(int a, int b){
  
  }
  void draw(){
    println("prev node = "+prevNodeID);
    println("current node = "+currentNodeID+"\n");
    
  }
  
}
