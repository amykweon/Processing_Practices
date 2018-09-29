void setup(){
  size(800,800);
}

void draw(){
  background(0);
  int x=mouseX;
  int y=mouseY;
  
  ellipse(x,y,300,300);
  stroke(150);
  strokeWeight(3);
  line(0,y,width,y);
  line(x,0,x,height);
}