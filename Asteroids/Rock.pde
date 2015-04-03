class Rock{
  PShape rock;
  float x, y;
  Rock(float x, float y){
    fill(200);
    rock = createShape();
    setShape();
    this.x = x;
    this.y = y;
  }

  void setShape(){
    rock.beginShape();
    rock.vertex(0,0);
    rock.vertex(20,0);
    rock.vertex(40,-10);
    rock.vertex(60,5);
    rock.vertex(70,20);
    rock.vertex(55,40);
    rock.vertex(24,50);
    rock.vertex(-10,44);
    rock.vertex(-5,12);
    rock.endShape();
  }
  
  void draw(){
    fill(222,22,0);  
    shape(rock, x, y);
  }
  
  void moveRock(){
  }
  
}
