PImage img;
void setup() {
  img = loadImage("/Users/amykweon/Documents/Processing/Resource_Image/Campbell soup.png");
  size(509, 763);
}
void draw() {

  for (int x= 0; x<width; x+=width/3)
    for (int y=0; y<height; y+=height/3)
    {
      tint(random(0, 256), random(0, 256), random(256));
      image(img, x, y, width/3, height/3);
    }
  delay(100);
}

void keyPressed() {
  if (key == 's') {
    saveFrame("random tint change###.png");
  }
}
