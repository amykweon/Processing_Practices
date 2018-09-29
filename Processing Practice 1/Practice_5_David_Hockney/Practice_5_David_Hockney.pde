PImage img;
void setup(){
  img=loadImage("/Users/amykweon/Documents/Processing/Resource_Image/Campbell soup.png");
  size(300,500);
}
void draw(){
  PImage cutImage;
  for(int i=0;i<10;i++){
    int x = int (random(width));
    int y = int (random(height));
    cutImage = img.get(x,y,int(random(50,150)), int(random(50,150)));
    image(cutImage,x+int(random(-10,10)),y+int(random(-10,10)),cutImage.width,cutImage.height);
  }
}
