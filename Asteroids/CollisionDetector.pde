class CollisionDetector{
  CollisionDetector(){
  
  }
  void checkCollision(ArrayList<Bullet> allbullets, ArrayList<Rock> allrocks){
  // println("checking within collision detector");
    for(int i = allbullets.size()-1; i >= 0; i--){
    // loops through each bullet and check for collision with each rock
      Bullet b = allbullets.get(i);
      for(Rock r: allrocks){
        // Detect bullet-rock collision
        float bDiameter, rDiameter;
        bDiameter = b.getDiameter();
        rDiameter = r.getDiameter();
        PVector bPosition = b.getPosition();
        PVector rPosition = r.getPosition();
        float rbDistance = dist(bPosition.x, bPosition.y, rPosition.x, rPosition.y);
        // println("rbDistance = " + rbDistance);
        // println("rDiameter = " + rDiameter);
        if(rbDistance < rDiameter/2){
          // b.destroy();
          print("hit");
          // destroyRock(r);
        }
      }
    }
  }// end checkCollision
} //end class