float div=1.0;
void setup(){
  background(255);
  size(1000,1000);
}
void draw(){
  if(mousePressed) div+=0.1;
  else div=1.0;
  for (int x=0; x<width;x+=40)
  for (int y=0;y<height;y+=40){
    fill((dist(x,y,mouseX,mouseY)/div)%255);
    rect(x,y,30,30);
  }
}
