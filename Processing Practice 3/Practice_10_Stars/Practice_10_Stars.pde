int s_num = 250;
Star myStar[] = new Star[s_num];

void setup() {
  size(800,600,P3D);
  for (int i =0; i < s_num; i++){
    myStar[i] = new Star();
  }
  smooth(8);
}

void draw(){
  background(0);
  for (int i = 0; i <s_num ; i++) {
    myStar[i].display();
    myStar[i].move();
  }
}

class Star {
  float xpos;
  float ypos;
  float zpos;
  float speed;
  float w;
  
  Star (){
    xpos = random(width);
    ypos = random(height);
    zpos = random(-200, 400);
    speed = random(3,5);
    w = random(3,5);
  }
  
  void display(){
    noStroke();
    fill(#ffcc33);
    pushMatrix();
    translate(xpos, ypos, zpos);
    ellipse(0,0,w,w);
    popMatrix();
  }
  
  void move(){
      zpos += speed;
    if (zpos > 400) {
      zpos = -200;
    }
  }
}