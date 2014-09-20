/* 
Inspired by http://en.wikipedia.org/wiki/Digger_(video_game)
Given: A text file/array containing map information for Digger game
Return: A graphics map representation based on the input text file

Tasks:
Improve graphics
Random map
Player movement (have to be constrained)
*/
String[] map;
String a;
PShape soil, diamond;
void setup(){
  size(500,500);
  background(0);
  map = new String[5];
  map[0] = "GGG..";
  map[1] = "GDG.G";
  map[2] = "G.G.G";
  map[3] = "....G";
  map[4] = "GDGDG";
  soil = loadShape("plainSoil.svg");
  diamond = loadShape("diamond.svg");
}

void draw(){
  drawMap(); 
}

void drawMap(){
  for(int i = 0; i < map.length; i++){
    for(int j = 0; j < map[0].length(); j++){
      if(map[i].charAt(j) == 'G'){
        shape(soil, j*100, i*100, 100, 100);
      }
      else if(map[i].charAt(j) == 'D'){
        shape(diamond, j*100, i*100, 100, 100);
      }
    }
  }
}




