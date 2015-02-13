class Pacman{
  int radius;
  float x, y;
  float dx, dy;
  float speed;
  color pacCol;
  boolean eating;
  String nextMove;
  String axis;
  Pacman(){
    radius = 50;
    x = radius/2;
    y = height/2;
    dx = 0;
    dy = 0;
    speed = 2;
    pacCol = color(255,255,0);
    eating = false;
    axis = "horizontal"; //Helps constrict movement and allow same-axis movement
    dx = speed;
  }
  
  void update(){
//    x = x + 0.5; 
//    calcMove();
    drawPacman();
  }
  
  void drawPacman(){
    noStroke();
    fill(pacCol);
    ellipse(x, y, radius, radius);
  }
  
  void calcMove(){
    if(x%50 <= 2){ // ??
      x = width/2;
      if(nextMove == "up"){
        dx = 0;
        dy = -speed;
      }
      else if(nextMove == "down"){
        dx = 0;
        dy = speed;
      }
      x = x + dx;
      y = y + dy;
    }
  }
    
  void setNextMove(String movement){
    nextMove = movement;
  }
}
