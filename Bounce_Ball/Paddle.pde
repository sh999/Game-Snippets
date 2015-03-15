class Paddle{
  float x, y, forceY;
  int w, h;
  Paddle(float x, float y){
    this.x = x;
    this.y = y;
    w = 100;
    h = 20;
    forceY = 0;
  }
  void draw(){
    y = mouseY;
    x = mouseX;
    fill(220, 140 , 240);
    rect(x, y, w, h);
  }
  void calcForce(){
    forceY = pmouseY - mouseY;
    forceY = forceY * 0.1;
    // println("ForceY = " + forceY);
  }
}
