//Pac-Man clone
//Todo: Restrict movement
/*
Idea:
pressing direction would set nextMovement to that direction
  pressing direction would not move player immediately
player "mover" would then move in the appropriate spot according to the nextMovement
for now, make it move in x, y axis only
To do:
Detect square ahead that pacman will hit; this is the square where the turn motion will happen
*/
Pacman pacman;
int tileSize;
ArrayList<Dot> dots;
TileSet tileSet;
void setup(){
  size(400, 400);
  background(0);
  pacman = new Pacman();
  tileSize = 50;
  dots = new ArrayList<Dot>();
  addDots();
  tileSet = new TileSet(tileSize, width);
}

void draw(){
  background(0);
  for(int i = 0; i < dots.size(); i++){
    Dot dot = dots.get(i);
    dot.update();
  }
  pacman.update(); // Calculates Pac-man's movement
  eatCheck();
  tileSet.update();
}

void addDots(){
  for(int y = 0; y <= 400; y = y + tileSize){
    for(int x = 0; x <= 400; x = x + tileSize){
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
  pacman.setNextMove(nextMove);
  println("nextmove = " + nextMove);
}

void eatCheck(){  // Allows pacman to eat dots
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
