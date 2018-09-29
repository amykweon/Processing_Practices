PImage jpg;
PFont font;
void setup(){
  jpg = loadImage ("/Users/amykweon/Documents/Processing/Resource_Image/ChwJt-cUkAAG2kS copy.png");
  font= loadFont ("1942report-48.vlw");
  background(40);
  size(1000,522);
  for (int x=0;x<width;x+=10)
  for (int y=0;y<height;y+=10){
    textBasedOnSampleColor(jpg.get(x,y),x,y);
  }
}
void textBasedOnSampleColor(color c, int x, int y){
    fill(c);
    textFont(font, map(brightness(c),0,255,5,20));
    text("BVS", x, y);
  }
