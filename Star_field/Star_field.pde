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
  a = new StarLayer(80, 2);
  b = new StarLayer(20, 5);
  c = new StarLayer(10, 10);
  
}

void draw(){
  a.draw();
  b.draw();
  c.draw();
}




