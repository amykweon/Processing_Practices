ArrayList<Fish> fish = new ArrayList<Fish>();
PImage Fish;

void setup() {
  size(800, 600, P3D);
  Fish = loadImage("fish.png");
  imageMode(CENTER);
}

void draw() {
  background (255);
  if (mousePressed) {
    fish.add(new Fish(mouseX, mouseY));
  }
  for (int i=0; i< fish.size(); i++) {
    Fish myF = fish.get(i);
    myF.display();
  }
}