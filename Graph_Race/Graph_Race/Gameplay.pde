class Gameplay{ // Mediates user click interaction and directs animation of network
  Gameplay(){
  }
  void draw(){
    network.draw();
    animator.moveDown(network);
  }
}
