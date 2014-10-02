/* Star_field
Generate:
Scrolling star field
Has multiple star layers, some moving fast, some slow

Task:
Get the array of stars working
*/
StarLayer a, b, c;
void setup(){
  size(400, 400);
  background(0);
  a = new StarLayer(80, 0.1);
  b = new StarLayer(40, 0.5);
//  c = new StarLayer(10, 10);
}

void draw(){
  background(0);
  a.draw();
  b.draw();
//  c.draw();
}

void mousePressed(){
  setup();
}




