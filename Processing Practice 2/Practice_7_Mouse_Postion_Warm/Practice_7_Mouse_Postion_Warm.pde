int [][] xyArray = new int[64][48];

void setup() {
  size(640, 480);
  for (int x=0; x<64; x++)
    for (int y=0; y<48; y++) {
      xyArray[x][y] = 0;
    }
  noStroke();
}

void draw() {
  background(0);
      xyArray[mouseX/10][mouseY/10]=1;
      for (int x=0; x<64; x++)
        for (int y=0; y<48; y++) {
          if (xyArray[x][y]!=0) {
            fill(200, 50);
            ellipse(x*10, y*10, xyArray[x][y]++, xyArray[x][y]++);
            if (xyArray[x][y]>100) xyArray[x][y]=0;
          }
        }
         for (int a=0; a<=width; a+=5)
    for (int b=0; b<=height; b+=5) {
      color c = get(a, b);
      fill(c);
      rect(a, b, 5,5);
    }
    }