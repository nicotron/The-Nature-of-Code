Mover mover;
void setup() {
  size(500, 500);

  mover = new Mover();
}

void draw() {
  background(255);
  
  mover.refrescar();
  mover.checkEdges();
  mover.display();
}