import processing.video.*;
Movie myMovie;

void setup() {
  size(640, 350);
  myMovie = new Movie(this, "/Users/amykweon/Documents/Processing/Resource_Image/7sfSMxzvVXZXsnRk copy.mp4");
  myMovie.loop();
  noFill();
}
void draw() {
  background(0);
  for (int x=0; x<width; x+=5)
    for (int y=0; y<height; y+=5) {
      strokeWeight(2);
      stroke(myMovie.get(x,y),150);
      line(x,y,random(-20,20)+x,random(-20,20)+y);
    }
}

void movieEvent(Movie m) {
  m.read();
}
