// Task: Given n, return a pair of values ranging from 0-n, non overlapping
void setup(){
  int node_num = 3;
  ArrayList pairs;
  pairs = new ArrayList();
  
  for(int i = 0; i < node_num; i++){ // Create pairs
    for(int j = i+1; j <= node_num; j++){
        pairs.add(new Pairs(i,j));
    }
  }
  for(int i = 0; i < pairs.size(); i++){ // Print pairs
    Pairs p = (Pairs)pairs.get(i);
    p.display();
  }
  print("\nSize = "+pairs.size());
  
  
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
