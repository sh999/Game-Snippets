class Connection_table{  //Essentially holds pairs table
  int node_num;
  ArrayList pairs;
  Connection_table(int node_num){
    this.node_num = node_num;  
    pairs = new ArrayList();
    for(int i = 0; i < node_num; i++){ // Create pairs
      for(int j = i+1; j <= node_num; j++){
          pairs.add(new Pairs(i,j));
      }
    }
    
    
  }
  int getPairNums(){
    return pairs.size();
  }
  int getPair(int id, String node){
    if(node == "STARTNODE"){
      return ((Pairs)pairs.get(id)).a ;
    }
    else if(node == "ENDNODE"){
     return ((Pairs)pairs.get(id)).b ;
    } 
    return 0;
  }
  
  
}

class Pairs{
  int a, b;
  Pairs(int a, int b){
    this.a = a;
    this.b = b;
  }
  void display(){
        print("("+a+","+b+")");
  }
   
}
