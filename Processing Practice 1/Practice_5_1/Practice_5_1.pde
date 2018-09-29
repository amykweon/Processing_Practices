PImage jpg;
PImage png;
String s;
PFont font;
int index =0;

background(255);
jpg=loadImage("n_3chndlivs-greg-rakozy copy.jpg");
png=loadImage("qdybkwszpsi-brooke-lark copy.jpg");
size (500, 750);
PImage cutJpg;
PImage cutPng;
for (int i=0; i<500; i++) {
  int x = int(random(width));
  int y = int(random(height));
  cutJpg = jpg.get(x, y, int(random(25,50)), int(random(25,50)));
  image(cutJpg, x+int(random(-20, 20)), y+int(random(-20, 20)), cutJpg.width, cutJpg.height);
}
for (int t=0;t<250;t++){
   int a = int(random(width));
  int b = int(random(100,500));
  cutPng = png.get(a, b, int(random(25,50)), int(random(25,50)));
  image(cutPng, a+int(random(-20, 20)), b+int(random(-20, 20)), cutPng.width, cutPng.height);
}
  s="My grandmother is a devout Christian. Her extraordinary passion in Christianity is obvious. She goes to the church twice each day, once at dawn and once at dusk, to attend both the morning prayer and the evening prayer. After she comes back from the church, she has her own praying time–which takes about an hour. She prays before every meal, and not to mention her humble habit of thanking God for every good news in the family. I am an atheist. ";
  font= loadFont("1942report-48.vlw");
  color c;
  for (int q=0;q<500;q+=500/50)
  for (int w=0;w<750;w+=750/50){
    c= get(q,w);
    textFont(font, brightness(c)/9+5);
    fill(c);
    text(s.charAt((index++)%s.length()),q,w);
  }
  
  //save("1.jpg");