void setup(){
  size(800,800);
  background(255);
  noFill();
  QRect(0,0,width,height);
  println("End");
}
void QRect(float x1, float y1, float x2, float y2){
  float halfblocksize=(x2-x1)/2;
  if (halfblocksize<10){
    return;
  } else {
    ellipse(x1,y1,x2,y2);
    QRect(x1+halfblocksize,y1+halfblocksize,x2,y2);
    QRect(x1, y1, 1.8*halfblocksize,1.8*halfblocksize);
  }
}