int num =25;
Circle myCircle[] = new Circle[num];

void setup() {
  size(600, 600);
  for (int y = 0; y < 5; y++) {
    for (int x = 0; x < 5; x++) {
      myCircle[x+y*5] = new Circle(x*100+100, y*100+100);
    }
  }
}

void draw() {
  for (int i =0; i<num; i++) {
    myCircle[i].update();
  }
}

  class Circle {
    float xpos;
    float ypos;
    float d = 50;
    float angle;

    Circle(int xpos, int ypos) {
      this.xpos = xpos;
      this.ypos = ypos;
    }

    void update() {
      pushMatrix();
      translate (xpos, ypos);
      angle = atan2(mouseY-ypos, mouseX-xpos);
      rotate(angle);
      ellipse (0, 0, d, d);
      line(0, 0, d/2, 0);
      popMatrix();
    }
  }