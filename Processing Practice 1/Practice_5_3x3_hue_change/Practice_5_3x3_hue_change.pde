size(600, 600);
PImage img;
img =loadImage("/Users/amykweon/Documents/Processing/Resource_Image/Campbell soup.png");
color c;
float h;
colorMode(HSB);
for (int x = 0; x<600; x+=200)
  for (int y = 0; y<600; y+=200) {
    image(img, x, y, 200, 200);
    h=random(255);

    for (int xx=x; xx<x+200; xx++)
      for (int yy=y; yy<y+200; yy++) {
        c=get(xx, yy);
        set(xx, yy, color(h, saturation(c), brightness(c)));
      }
  }
