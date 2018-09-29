class Particle {
  float xpos;
  float ypos;
  float speed;
  float alpha = 50;
  boolean del = false;
  
  Particle (float tempXpos, float tempYpos){
    xpos = tempXpos;
    ypos = tempYpos;
    speed = random(0.3,1);
  }
  void display (){
    fill(255,alpha);
    ellipse (xpos, ypos, 10,10);
    ypos -=speed;
    alpha -=0.5;
    if (alpha<0)
    {del = true;
    }
  }
}