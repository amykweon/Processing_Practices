int num = 10;
car myCar[] = new car[num];

void setup() {
  size(400, 400);
  for (int i = 0; i<num;i++){
    myCar [i] = new car (random(width),random(height));
  }
}

void draw() {
  background (255);
  for (int i = 0; i<num; i++) {
    myCar[i].display();
    myCar[i].drive();
  }
}