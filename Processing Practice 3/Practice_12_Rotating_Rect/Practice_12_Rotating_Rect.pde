void setup() {
  size(700, 700);
  noStroke();  
}

void draw() {
 background (255, 99,99);
 fill(#FFC857);
 
 for (int i = 0; i < 7; i++) {
   for(int j = 0; j < 7; j++) {
     
     pushMatrix();
     translate(50 + i * 100, 50 + j * 100);
     
     float ratio = i/7.0;
     float angle = sin(millis() / 1000.0 + ratio * PI/2) * PI/2;
     
     rotate (angle);
     rectMode(CENTER);
     
     rect(0, 0, 100, 20);
     
     popMatrix();
   }
 }
}