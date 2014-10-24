class Connection_table{  //Essentially holds pairs table
  int node_num;
  ArrayList pairs;
  
  Connection_table(int node_num){
    this.node_num = node_num;  
    pairs = new ArrayList();
    createPairs();
    for(int i = 0; i < pairs.size(); i++){
      Pair p = (Pair)pairs.get(i);
//        println("ID = "+p.id+":"+p.a+"-"+p.b); // Print table of pairs
    }
  }
  
  void createPairs(){
    int id = 0;
    for(int i = 0; i < node_num; i++){ // Create pairs of node-node connection 
      for(int j = i+1; j <= node_num; j++){
        if(random(100)>80){  // Not all possible edges will be drawn, only above threshold
          pairs.add(new Pair(i,j, id));
          id = id+1;
        }
      }
    }
  }
  
  int getPairNums(){
    return pairs.size();
  }
  
  int getPair(int id, String node){ // Create individual node pair
    if(node == "STARTNODE"){
      return ((Pair)pairs.get(id)).a ;
    }
    else if(node == "ENDNODE"){
     return ((Pair)pairs.get(id)).b ;
    } 
    return 0;
  }
  
  ArrayList getNeighbors(int targetNodeID){
    ArrayList neighbors = new ArrayList();
    for(int i = 0; i < pairs.size(); i++){
      Pair p = (Pair)pairs.get(i);
      if(p.a == targetNodeID){
        neighbors.add(p.b);
      }
      if(p.b == targetNodeID){
        neighbors.add(p.a);
      }
    }
    return neighbors;
  }
  
  int findEdgeID(int start, int end){
    for(int i = 0; i < pairs.size(); i++){
      Pair p = (Pair)pairs.get(i);      
      println("start node = "+start+".  "+"end node = "+end);
      if((p.a == start && p.b == end) || (p.b == start && p.a == end)){  
        print("\nTraveled edge = "+p.id);
        return(p.id);
      }
    }
    print("=====================");
    return -1;
  }
}

class Pair{
  int a, b;
  int id;
  Pair(int a, int b, int id){
    this.a = a;
    this.b = b;
    this.id = id;
  }
  void display(){
        print("("+a+","+b+")");
  }
}
