PImage img;
void setup(){
  img = loadImage("/Users/amykweon/Documents/Processing/Resource_Image/Campbell soup.png");
  size(509,763);
  image(img,0,0,509,763);
}
void draw(){
  color c =get(mouseX,mouseY);
  if(mousePressed){
    println("red = " +red(c)+" green = " +green(c)+" blue = "+blue(c));
  }
}
