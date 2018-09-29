void setup(){
  size(500,500);
  noStroke();
}
void draw(){
  background(255);
  fill(0);
  rectMode(CENTER);
  for(int x=25;x<width;x+=50){
    rect(x,x,30-dist(x,x,mouseX,mouseY),30-dist(x,x,mouseX,mouseY));
    for (int y=x+50;y<height;y+=50){
      rect(x,y,30-dist(x,y,mouseX,mouseY),30-dist(x,y,mouseX,mouseY));
      rect(y,x,30-dist(x,y,mouseX,mouseY),30-dist(x,y,mouseX,mouseY));
      }
  }
}