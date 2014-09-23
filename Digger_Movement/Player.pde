class Player{
  float x, y;
  Player(float x, float y ){
    this.x = x;
    this.y = y;
  }
  void draw(){
    fill(255, 255, 0);
    ellipse(x*tile_size-(tile_size/2),y*tile_size+(tile_size/2),40,40);
  }
}
