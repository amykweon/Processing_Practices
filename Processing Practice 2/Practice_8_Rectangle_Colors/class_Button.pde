class Button {
  int xpos;
  int ypos;

  Button (int temXpos, int temYpos) {
    xpos = temXpos;
    ypos = temYpos;
  }
  void display () {
    if((mouseX>50 && mouseX<150)&&(mouseY>50 && mouseY<150)){
      if (mousePressed && (mouseX>xpos && mouseX<xpos+50)&&(mouseY>ypos&&mouseY<ypos+50)) {
        fill(#ffcc33);
        rect(xpos, ypos, 50, 50);
      }
    }
  }
}