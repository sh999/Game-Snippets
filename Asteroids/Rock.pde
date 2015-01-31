class Rock{
  PShape rock;
  int x, y;
  Rock(int x, int y){
    fill(200);
    rock = createShape();
    this.x = x;
    this.y = y;
  }
  
  void drawRock(){
    
    
    fill(222,22,0);    
//    ellipse(x, y, 22, 22);
    rock.beginShape();
    vertex(200,200);
    vertex(10,0);
    vertex(10,20);
    vertex(3,4);
    rock.endShape(CLOSE);
  }
  
  void moveRock(){
  }
  
}
