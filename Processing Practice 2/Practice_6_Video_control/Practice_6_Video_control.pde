import processing.video.*;
Movie myMovie;

void setup() {
  size(650, 360);
  myMovie = new Movie(this, "/Users/amykweon/Documents/Processing/Resource_Image/Cc_onymUh4okcvCi.mp4");
  myMovie.loop();
  myMovie.pause();
}

void draw() {
  image(myMovie, 0, 0, 650, 360);
  if (keyPressed) {
    if (key == 't') {
      for (int x=0; x<width; x+=5)
        for (int y=0; y<=height; y+=5) {
          color c = (myMovie.get(x, y));
          fill(c);
          rect(x, y, 5, 5);
        }
    }
  }
}

void keyPressed() {
  if (key == '.') {
    myMovie.play();
  }
  if (key == '/') {
    myMovie.speed(4.0);
  }
  if (key == ';') {
    myMovie.pause();
  }
  if (key == ',') {
    myMovie.speed(-1.0);
  }
}

void keyReleased() {
  if (key =='/'||key==',') {
    myMovie.speed(1.0);
  }
}

void movieEvent (Movie m) {
  m.read();
}
