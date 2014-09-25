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

Tasks:  
  Make network map
    Make nodes (done)
    Make edges
      Test by making edge from one specific node to another


*/
Network network;
PFont font;
void setup(){
  size(400, 400);
  background(0);
  ellipseMode(CENTER);
  network = new Network(10); // Argument = # of nodes/circles in network
  font = loadFont("MyriadPro-Regular-30.vlw");
  textFont(font, 20);

}

void draw(){
  background(0);
  network.draw();

}

void mousePressed(){
  setup();
}








