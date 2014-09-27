class StarLayer{
  int starNum;
  float speed;
  int[] star;
  StarLayer(int starNum, float speed){
    this.starNum = starNum;
    this.speed = speed;
    star = new Star(starNum);
  }
  void draw(){
    
  }
}
