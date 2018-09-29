void setup(){
 size(1000,1000);
 noFill();
}
void draw(){
  background(255);
  for(int y=0;y<1000;y+=50){
    for(int x=0;x<1000;x+=50){
      stroke(x%255,y%255,200);
      ellipse(x,y,10,10);
      line(x,y,mouseX,mouseY);
    }
  }
}