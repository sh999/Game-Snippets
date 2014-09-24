class Player{
  float x, y;
  float upVel, downVel, leftVel, rightVel, speed;
  Player(float x, float y ){
    this.x = width/2;
    this.y = height/2;
    x = x*tile_size-(tile_size/2);
    y = y*tile_size+(tile_size/2);
    speed = 3;
  }
  void adraw(){
    fill(255, 255, 0);
    y = y + downVel - upVel;
    x = x + rightVel - leftVel;
    ellipse(x,y,40,40);
  }
}
