PImage jpg;
void setup(){
  jpg = loadImage ("/Users/amykweon/Documents/Processing/Resource_Image/ChwJt-cUkAAG2kS copy.png");
  background(40);
  size(1000,522,P3D);
  for (int x=0;x<width;x+=10)
  for (int y=0;y<height;y+=10){
    lineBasedOnSampleColor(jpg.get(x,y),x,y);
  }
}
void lineBasedOnSampleColor(color c, int x, int y){
  for(int i=0;i<brightness(c)/10;i++){
    stroke(c,255);
    line(x,y,x+random(-30,30),y+random(-30,30));
  }
}
