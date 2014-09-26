// Task: Given n, return a pair of values ranging from 0-n, non overlapping
void setup(){
  
  int node_num = 10;
  int[] a = new int[node_num];
  int[] b = new int[node_num];
  for(int i = 0; i < node_num; i++){
    a[i] = i;
    b[i] = node_num-1-i;
  }
  for(int i = 0; i < node_num; i++){
    print("("+a[i]+","+b[i]+")");
  }
}
