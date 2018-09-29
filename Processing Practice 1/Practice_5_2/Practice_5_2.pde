size(500, 750);
PImage jpg;
String s;
PFont font;
int index =0;

jpg=loadImage("n_3chndlivs-greg-rakozy copy 2.jpg");
color c;
float h;
colorMode(HSB);
for (int x=0; x<width; x+=width/3)
  for (int y=0; y<height; y+=height/3) {
    image(jpg, x, y, width/3, height/3);
    h=random(255);
    for (int a=x; a<x+width/3; a++)
      for (int b=y; b<y+height/3; b++) {
        c=get(a, b);
        set (a, b, color(h, saturation(c), brightness(c)));
      }
  }
  s="My grandmother is a devout Christian. Her extraordinary passion in Christianity is obvious. She goes to the church twice each day, once at dawn and once at dusk, to attend both the morning prayer and the evening prayer. After she comes back from the church, she has her own praying time–which takes about an hour. She prays before every meal, and not to mention her humble habit of thanking God for every good news in the family. I am an atheist. ";
  font =loadFont("1942report-48.vlw");
  color b;
  for (int y=0; y<height; y+=height/70)
    for (int x=0; x<width; x+=width/100) {
      b=get(x,y);
        textFont(font, brightness(b)/10+5);
      fill(b);
      text(s.charAt((index++)%s.length()), x, y);
    }
  