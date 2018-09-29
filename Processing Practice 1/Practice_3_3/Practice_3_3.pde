void setup(){
size(200,200);
background(255);
circle1(0,200,width,height);
circle2(150,50,width,height);
circle3(50,150,width,height);
fill(12,53,131,200);
  noStroke();
  ellipse(140,60,15,15);
ellipse(60,140,10,10);
ellipse(30,75,13,13);
ellipse(80,170,40,40);
ellipse(130,110,25,25);
ellipse(185,145,30,30);
println("end");
}
  
void circle1(float x1, float y1,float x2, float y2){
  fill(255,240,14,50);
  float rate= (2*x2-x1)/5;
  if (x1<100&&y1<100||x1>100&&y1>100){
    return;}
  if (x1<=100&&y1>=100||x1>=100&&y1<=100){
    if(rate<0.1){return;} else{
ellipse(x1,y1,x2,y2);
circle1(x1+rate, y1-rate,x2*0.8,y2*0.8);}}}

void circle2(float x1, float y1,float x2, float y2){
fill(70,15,115,50);
  float rate= (2*x2-x1)/5;
  if (x1<100&&y1<100||x1>100&&y1>100){
    return;}
  if (x1<=100&&y1>=100||x1>=100&&y1<=100){
    if(rate<0.1){return;} else{
ellipse(x1,y1,x2,y2);
circle2(x1*rate,y1/rate,x2*0.5,y2*0.5);
circle2(x1+rate, y1-rate,x2*0.8,y2*0.8);
circle2(x1+150,y1-150,x2*0.2,y2*0.2);}}}

void circle3(float x1, float y1,float x2, float y2){
fill(200,50,180,50);
  float rate= (2*x2-x1)/5;
  if (x1<100&&y1<100||x1>100&&y1>100){
    return;}
  if (x1<=100&&y1>=100||x1>=100&&y1<=100){
    if(rate<0.1){return;} else{
ellipse(x1,y1,x2,y2);
circle3(x1+150,y1-150,x2*0.2,y2*0.2);
circle3(x1*rate,y1/rate,x2*0.5,y2*0.5);
circle3(x1+rate, y1-rate,x2*0.8,y2*0.8);
}}}