/* 
Inspired by http://en.wikipedia.org/wiki/Digger_(video_game)


Tasks:  Create player that moves in constrained manner
Improve graphics
Random map
Player movement (have to be constrained)
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
  
  drawMap();
  player.draw(); 

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




