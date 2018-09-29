import processing.video.*;
Movie myMovie;

void setup() {
  size(640, 350,P3D);
  myMovie = new Movie(this, "/Users/amykweon/Documents/Processing/Resource_Image/Synchro Music.mp4");
  myMovie.loop();
}
void draw() {
  background(0);
  pointLight(250,250,250,150,150,150);
  for (int x=0; x<width; x+=12)
    for (int y=0; y<height; y+=12) {
      color c = (myMovie.get(x,y));
      fill(c); 
      pushMatrix();
      translate(x,y,brightness(c)*(-0.2));
      box(9,9,20);
      popMatrix();
    }
}

void movieEvent(Movie m) {
  m.read();
}
