import processing.video.*; 
Movie myMovie;

int mov_w = 750;
int mov_h = 750;
int blocks = 150; // size of screen, blocks
float mov_pointer = 0.0;    
float inc = 0.0;    
int i = 0;
float mov_dur = 0.0;

void setup() {
 size(750, 750, P3D);
 myMovie = new Movie(this, "/Users/amykweon/Documents/Processing/Lesson_6_Resource_Image/Synchro Music.mp4");
 mov_dur = myMovie.duration();
 inc = mov_dur/(blocks*blocks);    // 200by200 tiles
 println(mov_dur);
 myMovie.loop();  
}

void draw() {
if (mov_pointer>mov_dur) {    // it ends when movie ends
   print("\n The End");
   save("pornorama.tga");
   myMovie.stop();
   myMovie.noLoop();
   noLoop();
  }
 if(myMovie.available()) {
   myMovie.read();
   i++;
   image(myMovie, (i%blocks)*(mov_w/blocks), (i/blocks)*(mov_h/blocks), mov_w/blocks, mov_h/blocks);
 }
 mov_pointer=mov_pointer+inc;
}