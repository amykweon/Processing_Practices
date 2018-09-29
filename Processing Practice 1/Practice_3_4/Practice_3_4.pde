void setup(){
  size(1400,900);}
  
void draw(){
  float d=random(0,150);
  ellipse(random(1401),random(901),d,d);
  fill(random(256),random(256),0,200);
}