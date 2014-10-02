class Star{
  float x, y, d;
  float speed;
  Star(float speed){
    x = random(width);
    y = random(height);
    d = 3;
    this.speed = speed;
  }
  void draw(){
    fill(255);
    ellipse(x,y,d,d);
//    print(speed);
    y += speed;
    if(y > height){
      x = random(width);
      y = 0;
    }
  }
}
