PImage jpg;
jpg = loadImage("/Users/amykweon/Documents/Processing/Resource_Image/ChwJt-cUkAAG2kS copy.png");
size(1000,522);
noStroke();
for (int x=0;x<width;x+=5)
  for(int y=0;y<height;y+=5){
    fill(jpg.get(x,y));
    rect(x,y,5,5);
  }
