class Fish {
  float ratio = 0.5;
  float xpos = 0;
  float ypos = 0;
  float angle;
  float next_xpos;
  float next_ypos;
  float next_angle;
  int now_time = 0;
  
  
  Fish (float xpos, float ypos){
  this.xpos = xpos;
  this.ypos = ypos;
  now_time = millis();
  }
  
  void display(){
    if (millis() - now_time > 3000){
      next_xpos = random(width);
      next_ypos = random(height);
      now_time = millis();
      println("move");
    }
    next_angle = atan2(next_ypos - ypos, next_xpos - xpos);
    pushMatrix();
    translate(xpos, ypos);
    rotate(angle);
    
    image(Fish, 0,0,Fish.width*ratio, Fish.height*ratio);
    
    angle = lerp(angle, next_angle,0.1);
    xpos = lerp(xpos, next_xpos, 0.01);
    ypos = lerp(ypos, next_ypos, 0.01);
    popMatrix();
  }
}