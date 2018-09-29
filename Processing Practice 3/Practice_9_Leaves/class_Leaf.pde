class Leaf{
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  float ratio = 1;
  float r_size = 30;
  color c;
  float aspeed;
  float angle;
  float sangle;
  int direction = 1;
  float xoff = 0;
  float add_xoff;
  boolean del = false;
  
  Leaf(float xpos, float ypos){
    add_xoff = random(0.005);
    this.xpos = xpos;
    this.ypos = ypos;
    ratio = random(0.2,0.5);
    xspeed = random(0.2,2);
    yspeed = random(0.2,2);
    aspeed = random(0.005,0.01);
    sangle = random(TWO_PI);
    c = color (random(100,200), random(100,200),255);
    if (random(1)>0.5){
      direction = -1;
    }
  }
  
  void display(){
    float mx = noise(xoff)*150;
    xoff = xoff+ add_xoff;
    tint (c);
    imageMode(CENTER);
    pushMatrix();
    translate(xpos,ypos+mx);
    rotate((angle+sangle)*direction);
    image(leaf, 0, 0, leaf.width*ratio, leaf.height*ratio);
    popMatrix();
    noTint();
  }
  void move(){
    xpos = xpos+xspeed;
    ypos = ypos+yspeed;
    if (ypos>height){
      del = true;
    }
    angle += aspeed;
  }
}