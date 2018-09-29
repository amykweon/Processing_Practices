size(400, 295);
background(0);


for (int i=50; i<400; i+=50) {
  strokeWeight(10);
  stroke(255, 255, 255, 200);
  line(i, 0, i, 305);
  line(0, i, 405, i);
  fill(255);
  noStroke();
  ellipse(i, i, 15, 15);
  for (int w=i+50; w<400; w+=50) {
    ellipse(i, w, 15, 15);
    ellipse(w, i, 15, 15);
  }
}

println("end");