class Gameplay{ // Mediates user click interaction and directs animation of network
  Status status;
  Gameplay(){
    status = Status.START;
  }
  void draw(){
    network.draw();
    switch (status){
      case START:
        println("starting");
        break;
      case PLAYING:
        println("playing");
        break;
    }
//    animator.moveDown(network);
  }
  
  void mouseEvent(){
    
  
  }
}


