class Connection_table{  //Essentially holds pairs table
  int node_num;
  ArrayList pairs;
  Connection_table(int node_num){
    this.node_num = node_num;  
    pairs = new ArrayList();
    createPairs();
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
