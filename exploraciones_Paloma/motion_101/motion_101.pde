Mover mover;
void setup() {
  size(500, 500);

  mover = new Mover();
}

void draw() {
  background(255);
  
  mover.update();
  mover.checkEdges();
  mover.display();
}