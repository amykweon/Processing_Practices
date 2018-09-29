import processing.video.*;
Movie video; 
int x = 0;

void setup() {
  size(1280, 480);
  video = new Movie(this, "/Users/amykweon/Documents/Processing/Resource_Image/Synchro Music.mp4");
  video.loop();
}


void movieEvent(Movie video) {
  video.read();
}

void draw() {
  int w = video.width;
  int h = video.height;

  copy(video, 0, 0, w, h, x, 0, 1, h);
  x = x + 1;  

  if (x > width) {
    x = 0;
  }
}
