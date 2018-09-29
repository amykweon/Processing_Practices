color clickColor=(0);

void setup() {
  size(600, 600);
  background(255);
}
void draw() {
  fill(255);//white
  stroke(0);
  strokeWeight(1);
  rect(10, 10, 20, 20);
  if (mousePressed&&mouseX<30&&mouseY<30&&mouseX>10&&mouseY>10) {
    clickColor = color(255);
  }
  noStroke();
  fill(0);//black
  rect(10, 40, 20, 20);
  if (mousePressed&&mouseX<30&&mouseY<60&&mouseX>10&&mouseY>40) {
    clickColor = color(0);
  }
  fill(255, 14, 14);//red
  rect(10, 70, 20, 20);
  if (mousePressed&&mouseX<30&&mouseY<90&&mouseX>10&&mouseY>70) {
    clickColor = color(255, 14, 14);
  }
  fill(255, 240, 14);//yellow
  rect(10, 100, 20, 20);
  if (mousePressed&&mouseX<30&&mouseY<120&&mouseX>10&&mouseY>100) {
    clickColor=color(255, 240, 14);
  }
  fill(14, 14, 255);//blue
  rect(10, 130, 20, 20);
  if (mousePressed&&mouseX<30&&mouseY<150&&mouseX>10&&mouseY>130) {
    clickColor=color(14, 14, 255);
  }

  if (keyPressed) {
    if (key=='1') {
      strokeWeight(2);
    }
    if (key=='2') {
      strokeWeight(4);
    }
    if (key=='3') {
      strokeWeight(6);
    }
    if (key=='4') {
      strokeWeight(8);
    }
    if (key=='5') {
      strokeWeight(10);
    }
    if (key=='6') {
      strokeWeight(12);
    }
  } else {
    strokeWeight(1);
  }//stroke weight control

  if (keyPressed) {
    if (key=='e') { 
      fill(255);
      rect(mouseX, mouseY, 200, 200);
    }
  }//eraser

  if (mousePressed) {
    stroke(clickColor);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}//drawing