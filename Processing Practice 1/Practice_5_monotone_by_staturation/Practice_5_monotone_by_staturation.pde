PImage img;
colorMode(HSB);
img=loadImage("/Users/amykweon/Documents/Processing/Resource_Image/Campbell soup.png");
size(500, 700);
image(img, 0, 0, 500, 700);
for (int x=0; x<width; x++)
  for (int y=0; y<height; y++) {
    color c = get(x, y);
    c = color(hue(c), 0, brightness(c));
    set(x, y, c);
  }
