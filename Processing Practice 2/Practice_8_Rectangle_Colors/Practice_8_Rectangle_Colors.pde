int x_num = 4;
int y_num = 4;
Button myButton[] = new Button [x_num*y_num];

void setup() {
  size(200, 200);
  for (int x=0; x<x_num; x++) 
    for (int y=0; y<y_num; y++) {
      myButton[x+x_num*y] = new Button (x*50, y*50);
    }
    stroke(100);
  for (int x=0; x<=width; x+=50)
    for (int y=0; y<=height; y+=50) {
      fill(#8114C6);
      rect(x, y, 50, 50);
    }
  for (int x=50; x<150; x+=50)
    for (int y=50; y<150; y+=50) {
      fill(200);
      rect(x, y, 50, 50);
    }
}

void draw(){
  for (int i=0; i<x_num*y_num; i++){
    myButton[i].display();
  }
}