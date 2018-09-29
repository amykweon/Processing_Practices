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
      // if fill(brightness(c)<< monotone expressed by circles
      // if fill(255) << monotone expressed by background
      // if fill (c) << color
      ellipse (x,y,map(brightness(c),0,255,5,15),map(brightness(c),0,255,5,15));
      noStroke();
    }
}

void movieEvent(Movie m) {
  m.read();
}
