PImage jpg = loadImage ("/Users/amykweon/Documents/Processing/Resource_Image/ChwJt-cUkAAG2kS copy.png");
PFont font = loadFont ("1942report-48.vlw");
textFont(font, 20);
background(40);
size(1000, 522);
for (int x=0; x<width; x+=20)
  for (int y=0; y<height; y+=20) {
    color c = jpg.get(x, y);
    fill(c);
    textFont(font,map(brightness(c),0,255,10,30));
    text("V", x, y);
  }
