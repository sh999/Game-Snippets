/* 
Inspired by http://en.wikipedia.org/wiki/Digger_(video_game)
Tasks:  
Create player that moves in constrained manner
*/
String[] map;
String a;
PShape soil, diamond;
Player player;
int tile_size;
void setup(){
  size(500,500);
  background(0);
  ellipseMode(CENTER);
  map = new String[5];
  map[0] = "GGG..";
  map[1] = "GDG.G";
  map[2] = "G.G.G";
  map[3] = "....G";
  map[4] = "GDGDG";
  soil = loadShape("plainSoil.svg");
  diamond = loadShape("diamond.svg");
  player = new Player(5, 0);
  tile_size = 100;
}

void draw(){
  background(0);
  drawMap();
  player.adraw(); 
  

}

void drawMap(){
  for(int i = 0; i < map.length; i++){
    for(int j = 0; j < map[0].length(); j++){
      if(map[i].charAt(j) == 'G'){
        shape(soil, j*tile_size, i*tile_size, tile_size, tile_size);
      }
      else if(map[i].charAt(j) == 'D'){
        shape(diamond, j*tile_size, i*tile_size, tile_size, tile_size);
      }
    }
  }
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == DOWN){
      player.downVel = player.speed;
    }
    else if(keyCode == UP){
      player.upVel = player.speed;
    }
    else if(keyCode == LEFT){
      player.leftVel = player.speed;
    }
    else if(keyCode == RIGHT){
      player.rightVel = player.speed;
    }
  }
}

void keyReleased(){
if(key == CODED){
    if(keyCode == DOWN){
     
      player.downVel = 0;
    }
    else if(keyCode == UP){
      player.upVel = 0;
    }
    else if(keyCode == LEFT){
      player.leftVel = 0; 
    }
    else if(keyCode == RIGHT){
      player.rightVel = 0; 
    }
    
  }
  //  player.dx = 0;
//  player.dy = 0;
}




