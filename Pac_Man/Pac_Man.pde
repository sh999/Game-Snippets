//Pac-Man clone
//Todo: Restrict movement
/*
Idea:
pressing direction would set nextMovement to that direction
  pressing direction would not move player immediately
player "mover" would then move in the appropriate spot according to the nextMovement
for now, make it move in x, y axis only
*/
Pacman pacman;
ArrayList<Dot> dots;
void setup(){
  size(400, 400);
  background(0);
  pacman = new Pacman();
  dots = new ArrayList<Dot>();
  addDots();
}

void draw(){
  background(0);
  for(int i = 0; i < dots.size(); i++){
    Dot dot = dots.get(i);
    dot.update();
  }
  pacman.update(); // Calculates Pac-man's movement
  eatCheck();
}

void addDots(){
  for(int y = 0; y <= 400; y = y + 50){
    for(int x = 0; x <= 400; x = x + 50){
      dots.add(new Dot(x, y));
    }
  }
}

void keyPressed(){
  /*if(key == CODED){
    if(keyCode == RIGHT && pacman.dx != 1){
      pacman.dx = pacman.speed;
      pacman.dy = 0;
    }
    if(keyCode == LEFT && pacman.dx != -1){
      pacman.dx = -pacman.speed;
      pacman.dy = 0;
    }
    if(keyCode == DOWN && pacman.dy != 1){
      pacman.dy = pacman.speed;
      pacman.dx = 0;
    }
    if(keyCode == UP && pacman.dy != -1){
      pacman.dy = -pacman.speed;
      pacman.dx = 0;
    }
  }*/
  String nextMove = ""; 
  if(key == CODED){
    if(keyCode == RIGHT){
      nextMove = "right";
    }
    if(keyCode == LEFT){
      nextMove = "left";
    }
    if(keyCode == UP){
      nextMove = "up";
    }
    if(keyCode == DOWN){
      nextMove = "down";
    }
  }
//  println("Pressed key = "+nextMove);
  pacman.setNextMove(nextMove);
}

void eatCheck(){
  for(int i = 0; i < dots.size(); i++){
    Dot dot = dots.get(i);
    if(dist(dot.x,dot.y,pacman.x,pacman.y) < pacman.radius/2){
      dots.remove(i);
      pacman.eating = true;
    }
    else {
      pacman.eating = false;
    }
  }

}
