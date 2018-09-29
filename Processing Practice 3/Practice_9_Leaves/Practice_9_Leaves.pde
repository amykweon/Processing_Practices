ArrayList<Leaf> leaves = new ArrayList<Leaf>();
PImage leaf;

void setup(){
  size(1024,768,P3D);
  leaf = loadImage("leaf.png");
}

void draw(){
  background (255);
  if(frameCount % 5 == 0){
  leaves.add(new Leaf(random(-300,width),-50));
  }
  for(int i =0 ; i<leaves.size();i++){
    Leaf myLeaf = leaves.get(i);
    myLeaf.display();
    myLeaf.move();

    if(myLeaf.del == true){
      leaves.remove(i);
    }
  }
}