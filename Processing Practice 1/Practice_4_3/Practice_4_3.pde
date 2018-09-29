size(800,800);
noFill();
background(255);
for(int i=0;i<5000;i++){
  stroke(random(256));
  strokeWeight(random(3));
  curve(random(width),random(height),random(width),random(height),random(width),random(height),random(width),random(height));}
for(int i=0;i<50;i++){
  stroke(random(200,256),random(190,241),random(0,15));
  strokeWeight(random(10));
  curve(random(width),random(height),random(width),random(height),random(width),random(height),random(width),random(height));}