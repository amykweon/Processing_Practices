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
      if (mousePressed){
        curve(random(x-100,x+100),random(y-100,y+100),x,y,mouseX,mouseY,random(mouseX-100,mouseX+100),random(mouseY-100,mouseY+100));}
        else {
          line(x,y,mouseX,mouseY);
    }
  }
}
}