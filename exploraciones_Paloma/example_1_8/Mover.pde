class Mover {
  PVector ubicacion;
  PVector velocity;
  PVector aceleracion;
  
  float velmax;

  Mover() {
    ubicacion = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    aceleracion = new PVector(-0.001, 0.01);
    velmax = 10;
  }
  
  void refrescar() {
    velocity.add(aceleracion);
    velocity.limit(velmax);
    ubicacion.add(velocity);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(175);
    ellipse(ubicacion.x, ubicacion.y, 50, 50);
  }

  void checkEdges() {
    if (ubicacion.x > width) {
      ubicacion.x = 0;
    } else if (ubicacion.x < 0) {
      ubicacion.x = width;
    }

    if (ubicacion.y > height) {
      ubicacion.y = 0;
    } else if (ubicacion.y < 0) {
      ubicacion.y = height;
    }
  }
}