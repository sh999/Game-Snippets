class Bullet{
  PVector direction;
  float x, y;
  float speed, diameter;
  float lifetime;
  boolean dead;
  color bulletColor;
  boolean destroyThis;
  Bullet(float x, float y, float angle){
    direction = new PVector();
    direction = PVector.fromAngle(angle);
    direction.normalize();
    this.x = x;
    this.y = y;
    speed = 1;
    diameter = 5;
    lifetime = 75;
    dead = false;
    bulletColor = color(255,255,0);
    destroyThis = false;
  }

  void update(){
    drawBullet();
    move();
    decay();
  }

  void destroy(){
    print("hit");
    bulletColor = color(255,0,0);
    dead = true;
  }

  void drawBullet(){
    fill(bulletColor);
    stroke(250);
    pushMatrix();   // Testing line vector drawing
    translate(width/2,height/2);
    direction.normalize();
    direction.setMag(4);
    // line(0,0,direction.x,direction.y); 
    popMatrix();  // End test
    noStroke();
    ellipse(x, y, diameter, diameter);
  }

  void move(){
    x += direction.x;
    y += direction.y;
    
  }

  void decay(){
    lifetime -= 1;
    if(lifetime < 0){
      dead = true;
    }
  }

  void setDirection(float a){
    direction = PVector.fromAngle(a);
  }

  boolean dead(){
    return dead;
  }

  float getDiameter(){
      return diameter;
  }

  PVector getPosition(){
      PVector position = new PVector(x, y);
      return position;
  }
}

