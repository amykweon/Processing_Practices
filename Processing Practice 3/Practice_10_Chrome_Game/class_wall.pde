class wall {
  int xpos = width;
  int ypos = height/2;
  int h;
  int speed = int(random(4,8));
  boolean del = false;

  wall() {
    h = int(random (10, 30));
  }
  
  
  void update() {
    rect(xpos,ypos-h,5,h);
    
    if (dist(x,y,xpos,ypos) <15){
      println("Game Over");
      game_over = true;
    }
  }
  
  void move() {
    xpos -= speed;
    if (xpos < -5) {
      del = true;
    }
  }
}