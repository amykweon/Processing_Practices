class Button {
  int xpos;
  int ypos;
  color c;
  Button(int tempXpos, int tempYpos) {
    xpos = tempXpos;
    ypos = tempYpos;
    c = color (#ffcc33);
  }
  void display() {
    if (mousePressed && (mouseX>xpos && mouseX<xpos+50)&&(mouseY>ypos&&mouseY<ypos+50)) {
      fill (c);
    } else
    {
      fill(200);
    }
      rect(xpos, ypos, 50, 50);
    }
}