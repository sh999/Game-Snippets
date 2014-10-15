void setup(){
  int[] a = new int[5];
  a = getInts();
  for(int i = 0; i < 4; i++){
    println(a[i]);
  }
}

int[] getInts(){
  int[] array = new int[5];
  for(int i = 0; i<4; i++){
    array[i] = i;
  }
  return array;
}
