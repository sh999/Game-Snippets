// Edge_Label_Study.pde
// Display line length at midpoint position
PVector point1 = new PVector();
PVector point2 = new PVector();
PVector midpoint = new PVector();
void setup(){
  PFont font;
  font = loadFont("Serif-20.vlw");
  textSize(50);
  background(233, 211, 0);
  size(300,300);
  point1.set(width/2, height/2);
}
void draw(){
  background(233,211,0);
  point2.set(mouseX, mouseY);
  midpoint = PVector.sub(point1, point2);
  midpoint.div(2);
  midpoint = PVector.add(midpoint, point2);
  line(point1.x, point1.y, point2.x, point2.y);
  fill(200,9,9);
  text(point1.dist(point2), midpoint.x, midpoint.y);
}
