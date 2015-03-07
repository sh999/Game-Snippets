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
Highlight tile
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
  drawTiles();
  drawDots();
  drawPacMan();
  checkInteractions();
}

void drawTiles(){
  tileSet.colorTile(3, 3, color(255, 255, 0));
  tileSet.update();
}

void drawDots(){
  for(int i = 0; i < dots.size(); i++){
    Dot dot = dots.get(i);
    dot.update();
  }
}

void drawPacMan(){
  pacman.update(); // Calculates Pac-man's movement
}

void checkInteractions(){
  eatCheck(); // Allows Pac-Man to eat dots
  pacmanTileInteraction();
}

void pacmanTileInteraction(){
  int row = int((pacman.x + tileSize) / tileSize);
  text(row,pacman.x+22,pacman.y+22);
}

void addDots(){
  for(int y = 0; y <= 400; y = y + tileSize){
    for(int x = 0; x <= 400; x = x + tileSize){
      dots.add(new Dot(x, y));
    }
  }
}

void keyPressed(){
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
      println("up");
    }
    if(keyCode == DOWN){
      nextMove = "down";
    }
  }
  else if(key == 'a'){
      println("a pressed");
  }
  pacman.setNextMove(nextMove);
  // pacman.move("up", )
  // println("nextmove = " + nextMove);
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
