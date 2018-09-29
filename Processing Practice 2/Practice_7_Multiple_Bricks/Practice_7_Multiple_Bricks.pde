int num = 100;
Car[] myCar = new Car[num];

void setup(){
  size(500,500);
  for (int i=0;i<num;i++){
    myCar[i] = new Car (random(width),random(height),color(random(255),random(255),random(255)),random(1,5));
  }
}

void draw(){
  background(255);
  for (int i=0; i<num;i++){
  myCar[i].display();
  myCar[i].drive();
  }
}