class car{
  float xpos;
  float ypos;
  
  car(float tempXpos, float tempYpos){
    xpos = tempXpos;
    ypos = tempYpos;
  }
  void display(){
    rect(xpos, ypos, 30,10);
  }
  void drive(){
    xpos++;
    if (xpos>width){
      xpos = 0;
    }
  }
}