PImage jpg;
jpg = loadImage("/Users/amykweon/Documents/Processing/Resource_Image/ChwJt-cUkAAG2kS copy.png");
size(1000,522);
background(40);
noStroke();
for (int x=0;x<width;x+=20)
  for(int y=0;y<height;y+=20){
    fill(jpg.get(x,y));
    color c = jpg.get(x,y);
    ellipse(x,y,map(brightness(c),0,255,5,18),map(brightness(c),0,255,5,18));
  }
