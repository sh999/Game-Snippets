class Pacman{
  int radius;
  float x, y;
  float dx, dy;
  float speed;
  color pacCol;
  boolean eating;
  Pacman(){
    radius = 50;
    x = radius/2;
    y = height/2;
    dx = 0;
    dy = 0;
    speed = 2;
    pacCol = color(255,255,0);
    eating = false;
  }
  void update(){
    x = x + dx;
    y = y + dy;
//    fill(255,255,0);
    fill(pacCol);
    ellipse(x, y, radius, radius);
  }
  
}
