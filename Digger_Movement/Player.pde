class Player{
  float x, y;
  float dx, dy, speed;
  Player(float x, float y ){
    this.x = width/2;
    this.y = height/2;
    x = x*tile_size-(tile_size/2);
    y = y*tile_size+(tile_size/2);
    dx = 0;
    dy = 0;
    speed = 3;
  }
  void adraw(){
    fill(255, 255, 0);
    
    rect(width/2, y, 30, 30);
    
    y = y + dy;
    x = x + dx;
    ellipse(x,y,40,40);
  }
}
