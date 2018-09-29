PImage img;
size(400,400);
img=loadImage ("/Users/amykweon/Documents/Processing/Resource_Image/Campbell soup.png");
for (int x=0;x<400;x+=10){
image(img,x,x,10,10);
for (int y=20+x;y<400;y+=20){
  image(img,y,x,10,10);
image (img,x,y,10,10);}
}
PImage jpg;
jpg=loadImage("/Users/amykweon/Documents/Processing/Resource_Image/Campbell soup.png");
for (int a=10;a<400;a+=20){
image(jpg,a,0,10,10);
for(int b=20;b<400;b+=20){
  image(jpg,a,b,10,10);
  for(int c=0;c<400;c+=20){
    image(jpg,c,10,10,10);
    for(int d=10;d<400;d+=20){
      image(jpg,c,d,10,10);}
}}}
