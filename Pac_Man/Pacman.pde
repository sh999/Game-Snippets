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
    
    /* Old mov't algorithm
    x = x + dx; //Changes pac man's movement
    y = y + dy;*/ 
    
    /* newer mov't algorithm
    if(nextMove == "right"){
      dx = speed;
      dy = 0;
    }
    else if(nextMove == "up"){

      dy = -speed;
      dx = 0;
    }
    x = x + dx;
    y = y + dy;*/
    
    
    
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
    
    fill(pacCol);
    ellipse(x, y, radius, radius);
    
    
  }
  void setNextMove(String movement){
    nextMove = movement;
  }
  
}
