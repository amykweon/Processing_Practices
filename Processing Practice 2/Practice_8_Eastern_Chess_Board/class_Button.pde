class Button {
  int xpos;
  int ypos;
  
  Button(int tempXpos, int tempYpos){
    xpos = tempXpos;
    ypos = tempYpos;
  }
  void display(){
    if (mousePressed && (mouseX>xpos && mouseX<xpos+50)&&(mouseY>ypos&&mouseY<ypos+50)){
      fill (#ffcc33);
      rect(xpos,ypos,50,50);
  }
}
}