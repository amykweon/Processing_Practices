int x = 300;
int y =0;
float drop = 1;

int now_time = 0;
int interval;

boolean game_over = false;

ArrayList<wall> walls = new ArrayList <wall>();

void setup() {
  size(800, 600);
  now_time = millis();
}

void draw() {
  background(0);

  if (millis() - now_time > interval) {
    walls.add(new wall());
    now_time = millis();
    interval = int (random(500, 2000));
    print ("w");
  }

  ellipse(x, y, 30, 30);
  stroke(255);
  line(0, height/2, width, height/2);
  if (y + drop < height/2) {
    y += drop;
    drop += 0.5;
  }

  for (int i = 0; i<walls.size(); i++) {
    wall myWall = walls.get(i);
    myWall.update();

    if (game_over == false) {
      myWall.move();
    }
    if (myWall.del == true) {
      walls.remove(i);
    }
  }
}

void keyPressed() {
  drop = -10;
}