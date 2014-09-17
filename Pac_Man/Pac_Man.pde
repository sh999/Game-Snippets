//Pac-Man clone
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
  pacman.update();
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
  if(key == CODED){
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
    
  }
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
