Fish myFish;
PImage fish;

void setup(){
  size(800,600,P3D);
  myFish = new Fish(width/2, height/2);
  
  fish = loadImage("fish.png");
  imageMode(CENTER);
}

void draw(){
  background(255);
  myFish.display();
}