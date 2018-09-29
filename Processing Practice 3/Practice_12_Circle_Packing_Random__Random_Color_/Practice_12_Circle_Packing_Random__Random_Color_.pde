ArrayList<Circle> circles;

void setup() {
  size(640, 360);
  circles = new ArrayList<Circle>();
  //circles.add(new Circle(200, 200));
}
void draw() {
  background(0);
  frameRate(20);

  Circle newC = newCircle();

  if (newC != null) {
    circles.add(newC);
  }


  for (Circle c : circles) {
    if (c.growing) {
      if (c.edges()) {
        c.growing = false;
      } else {
        for (Circle other : circles) {
          if (c != other) {
            float d = dist(c.x, c.y, other.x, other.y);
            if (d<c.r + other.r) {
              c.growing = false;
              break;
            }
          }
        }
      }
    }
    c.show();
    c.grow();
  }
}

Circle newCircle() {
  float x = random(width);
  float y = random(height);
  boolean valid = true;
  for (Circle c : circles) {
    float d  = dist(x, y, c.x, c.y);
    if ( d<c.r) {
      valid = false;
      break;
    }
  }
  if (valid) {
    return new Circle (x, y);
  } else {
    return null;
  }
}