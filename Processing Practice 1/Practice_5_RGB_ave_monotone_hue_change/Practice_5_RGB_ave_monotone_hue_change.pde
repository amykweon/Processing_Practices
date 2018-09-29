PImage img;
img = loadImage("/Users/amykweon/Documents/Processing/Resource_Image/Campbell soup.png");
size(509, 763);
image(img, 0, 0, 509, 763);
int x, y;
float r,g,b,ave;
for (x=0; x<width; x++)
  for (y=0; y<height; y++) {
    color c = get(x, y);
    r=red(c);
    g=green(c);
    b=blue(c);
    ave=(r+g+b)/3;
    c=color(ave,ave,ave);
    set(x, y, c);
  }
