class Rock{
  PShape rock;
  float x, y;
  float diameter;
  PVector direction;
  Rock(float x, float y){
    fill(200);
    rock = createShape();
    setShape();
    this.x = x;
    this.y = y;
    diameter = 40;
    direction = new PVector();
    direction = PVector.fromAngle(random(0, 360));

  }

  void setShape(){
    /*rock.beginShape();
    rock.vertex(0,0);
    rock.vertex(20,0);
    rock.vertex(40,-10);
    rock.vertex(60,5);
    rock.vertex(70,20);
    rock.vertex(55,40);
    rock.vertex(24,50);
    rock.vertex(-10,44);
    rock.vertex(-5,12);
    rock.endShape();*/
  }
  
  void update(){
    draw();
    moveRock();
    screenWrap();
  }

  void draw(){
    fill(111);
    // shape(rock, x, y);
    ellipse(x, y, diameter, diameter);
  }
  
  void moveRock(){
    x += direction.x;
    y += direction.y;
  }

  void screenWrap(){
    if(x > width){
      x = width - x;
    }
    else if(x < 0){
      x = width + x;
    }
    if(y > height){
      y = y - height;
    }
    else if(y < 0){
      y = height - y;
    }
  }

  float getDiameter(){
    return diameter;
  }

  PVector getPosition(){
    PVector position = new PVector(x, y);
    return position;
  }
  
}
