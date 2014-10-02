class StarLayer{
  int starNum;
  float speed;
  Star[] star;
  StarLayer(int starNum, float speed){
    this.starNum = starNum;
    this.speed = speed;
    star = new Star[starNum];
    for(int i = 0; i < starNum; i++){
      println(speed);
      star[i] = new Star(speed);
    }
  }
  void draw(){
    for(int i = 0; i < starNum; i++){
      star[i].draw();
    }
  }
}
