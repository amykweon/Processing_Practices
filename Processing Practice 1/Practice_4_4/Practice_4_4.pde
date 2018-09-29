size(256,256);
background(255);
for(int i=0; i<500; i++){
  float x= random(width);
  float y= random(height);
  fill(x,y,255);
  rect(x,y,20,20);
}