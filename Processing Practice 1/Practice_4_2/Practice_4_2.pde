size(600,600);
background(255);
for (int c=0;c<=width;c+=50)
for (int d=0;d<=height;d+=50){
  fill(255,220,20,50);
  ellipse(c,d,50,50);
  noStroke();
}
noFill();
for (int x=0;x<=width;x+=50)
for (int y=0;y<=height;y+=50){
  ellipse(x,y, x+y,x+y);
  stroke((x+y)%255,(x+y)%255,(x+y)%255,230);
}
for (int a=0;a<=width;a+=70)
for (int b=0;b<=height;b+=70){
  ellipse (a,b, (a+b)%600,(a+b)%600);
  strokeWeight(2);
  stroke(a%255,b%255,200,100);
}