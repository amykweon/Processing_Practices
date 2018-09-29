ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  size(800, 600);
  noStroke();
}

void draw() {
  background(0);
  particles.add(new Particle(width/2+random(-10, 10), height/2+random(-10, 10)));
  for (int i = 0; i< particles.size(); i++) {
    Particle myP = particles.get(i);
    myP.display();
    if (myP.del == true)
    {
      particles.remove(i);
    }
  }
  fill(255);
  text(particles.size(), 100, 100);
}