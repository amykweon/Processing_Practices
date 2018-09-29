PImage img;
void setup() {
  colorMode(HSB);
  img = loadImage("/Users/amykweon/Documents/Processing/Resource_Image/Campbell soup.png");
  size(509, 763);
  image(img, 0, 0, 509, 763);
}
void draw() {
  image(img, 0, 0, 509, 763);
  for (int x=0; x<width; x++)
    for (int y=0; y<height; y++) {
      color c = get(x, y);
      c = color((hue(c)+(mouseX*255)/width)%256, saturation(c), brightness(c));
      set(x, y, c);
    }
}


//complementary color
//PImage img;
//colorMode(HSB);
//img = loadImage("/Users/amykweon/Documents/Processing/Lesson_5_Resource_Image/Campbell soup.png");
//size(509, 763);
//image(img, 0, 0, 509, 763);
//for (int x=0; x<width; x++)
  //for (int y=0; y<height; y++) {
    //color c = get(x, y);
    //c = color((hue(c)+128)%256, saturation(c), brightness(c));
    //set(x, y, c);
  //}
