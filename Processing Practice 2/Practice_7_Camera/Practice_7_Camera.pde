import processing.video.*;
Capture cam;
void setup(){
  size(640,480);
  String[] cameras = Capture.list ();
  if(cameras.length == 0){
    println("There are no cameras avaliable for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i< cameras.length;i++){
      println(i+" " +cameras[i]);
    }
    cam = new Capture (this, cameras[0]);
    cam.start();
  }
}
void draw(){
  if(cam.available() == true){
    cam.read();
  }
  image(cam,0,0);
}
void captureEvent(Capture c){
  c.read();
}