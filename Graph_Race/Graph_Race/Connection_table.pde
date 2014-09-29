class Connection_table{  //Essentially holds pairs table
  int node_num;
  ArrayList pairs;
  Connection_table(int node_num){
    this.node_num = node_num;  
    pairs = new ArrayList();
    createPairs();
    println("Connections = ");
    for(int i = 0; i < pairs.size(); i++){
      Pair p = (Pair)pairs.get(i);
      
      println(p.a+"-"+p.b);
    }
  }
  void createPairs(){
    for(int i = 0; i < node_num; i++){ // Create pairs of node-node connection 
      for(int j = i+1; j <= node_num; j++){
        if(random(100)>80){  
          pairs.add(new Pair(i,j));
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
//        neighbors.add(1);
      }
      if(p.b == targetNodeID){
        neighbors.add(p.a);
      }
    }
    print("TargetNodeID = "+targetNodeID);
    print("Neighbors = "+neighbors);
    return neighbors;
    
  }
}

class Pair{
  int a, b;
  Pair(int a, int b){
    this.a = a;
    this.b = b;
  }
  void display(){
        print("("+a+","+b+")");
  }
}