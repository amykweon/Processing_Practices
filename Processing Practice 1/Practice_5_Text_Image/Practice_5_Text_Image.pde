PImage img;
String s;
PFont font;
int index = 0;

void setup() {
  img=loadImage("/Users/amykweon/Documents/Processing/Resource_Image/Campbell soup.png");
  size(280, 400);
  s="My grandmother is a devout Christian. Her extraordinary passion in Christianity is obvious. She goes to the church twice each day, once at dawn and once at dusk, to attend both the morning prayer and the evening prayer. After she comes back from the church, she has her own praying time–which takes about an hour. She prays before every meal, and not to mention her humble habit of thanking God for every good news in the family. I am an atheist. ";
  font = loadFont("1942report-48.vlw");
  color c;
  background (0);
  for (int y=0; y<height; y+=height/70)
    for (int x=0; x<width; x+=width/100) {
      c=img.get(x, y);
      textFont(font, brightness(c)/10+5);
      fill(c);
      text(s.charAt((index++)%s.length()), x, y);
    }
}
