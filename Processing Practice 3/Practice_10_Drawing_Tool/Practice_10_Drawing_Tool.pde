int maxTime = 400;
int strokePerFrame = 100;
PImage img;
float brightnessShift = random(255);

String[] imgNames = {"ChfMuHSU4AAezBs copy.jpg"};
int imgIndex = -1;

void setup() {
  size(500, 791);
  colorMode (HSB, 255);
  nextImage();
}

void draw() {
  translate(width/2,height/2);
  for (int i = 0; i<strokePerFrame; i++) {
    int index = int(random(img.width*img.height));

    color pixelColor = img.pixels[index];

    int x = index%img.width;
    int y = index/img.width;

    pushMatrix();
    translate(x-img.width/2, y-img.height/2);
    if (frameCount % 5 ==0) {
      paintDot(pixelColor, int(random(2, 10)*map(frameCount, 0, maxTime, 1, 0.5)));
    } else {
      paintStroke(random(150, 250), pixelColor, int(random(2, 4)*map(frameCount, 0, maxTime, 1, 0.1)), map(frameCount, 0, maxTime, 40, 5));
    }
    popMatrix();

    if (frameCount > maxTime) {
      noLoop();
    }
  }
}

void nextImage() {
  background(255);
  frameCount = 0;
  
  imgIndex++;
  if(imgIndex >= imgNames.length){
    imgIndex = 0;
  }
  
  img = loadImage(imgNames[imgIndex]);
}

void mousePressed() {
  int num = 0;
  save("save" + num + ".jpg");
  nextImage();
  num += 1;
}

void paintStroke(float strokeLength, color strokeColor, int strokeThickness, float length) {
  float b = brightness(strokeColor);
  float bShift = b + brightnessShift;
  if (bShift >255) {
    bShift-= 255;
  }

  rotate(radians(map(b, 0, 255, -180, 180)));

  //Dark
  stroke(map(bShift, 0, 255, 0, 255), 150, map(b, 0, 255, 0, 100), 50);
  line(-length, 1, length, 1);
  //Normal
  stroke(map(bShift, 0, 255, 0, 255), 150, map(b, 0, 255, 0, 255));
  strokeWeight(strokeThickness);
  line(-length, 0, length, 0);
  //Lighter
  stroke(map(bShift, 0, 255, 0, 255), 150, map(b, 0, 255, 150, 255), 20);
  line(-length, 2, length, 2);
}

void paintDot(color strokeColor, int strokeThickness) {
  float b = brightness(strokeColor);
  float bShift = b + brightnessShift;
  if (bShift > 255) {
    bShift -= 255;
  }

  rotate(radians(random(-180, 180)));

  stroke(map(bShift, 0, 255, 0, 255), 150, map(b, 0, 255, 0, 255));
  strokeWeight(strokeThickness);
  line(0, 0, 5, 0);
}