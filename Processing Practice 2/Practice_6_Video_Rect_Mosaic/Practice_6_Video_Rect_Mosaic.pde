import processing.video.*;
Movie myMovie;

void setup() {
  size(640, 350);
  myMovie = new Movie(this, "/Users/amykweon/Documents/Processing/Resource_Image/7sfSMxzvVXZXsnRk copy.mp4");
  myMovie.loop();
}
void draw() {
  background(0);
  for (int x=0; x<width; x+=12)
    for (int y=0; y<height; y+=12) {
      color c = (myMovie.get(x,y));
      fill(brightness(c)); 
       rect (x,y,map(brightness(c),0,255,5,15),map(brightness(c),0,255,5,15));
       //rect (x,y,12,12);
      noStroke();
    }
}

void movieEvent(Movie m) {
  m.read();
}
