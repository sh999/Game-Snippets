/* Graph race
9/2014
Each level consists of randomly-generated
graph.  Each node is a circle that the player
can move around in.  Player can move from
circle to circle.  There's a start and
finish line.  Each circle shrinks at random
rate.  Not sure about scoring.
Alternative:  No end but scoring counts how many
nodes you've traveled.  The smaller the circle you traverse
the higher the score
*/
Network network;
Connection_table c_table;
Gameplay gameplay;
Network_Modifier n_modifier;
EdgeTracker edgeTracker;
Colorizer colorizer;
NodeColor nodeColor;
PFont font;
void setup( ){
  int node_num = 6;

  size(800, 800);
  background(0);
  ellipseMode(CENTER);
  textAlign(CENTER, CENTER);
  font = loadFont("MyriadPro-Regular-30.vlw");
  textFont(font, 20);
  c_table = new Connection_table(node_num); //Creates a table of pair of integers from 0-node_num);
  network = new Network(node_num); 
  gameplay = new Gameplay(); //Controls flow of clicks/events
  edgeTracker = new EdgeTracker(); //Keeps track of travel history, score.  Communicates with gameplay and network
  n_modifier = new Network_Modifier();
  colorizer = new Colorizer(node_num);
  nodeColor = new NodeColor(node_num);
}

void draw(){
  background(0);
  gameplay.draw();
  edgeTracker.draw();
}

void mousePressed(){
  gameplay.mousePressedEvent();
  edgeTracker.draw();
}

void mouseReleased(){
  gameplay.mouseReleasedEvent();
}

void keyPressed(){
  if(key == 'r'){
    setup();
  }
}
      







