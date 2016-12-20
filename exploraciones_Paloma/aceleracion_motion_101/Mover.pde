class Mover {
  PVector location;
  PVector velocity;
  PVector aceleracion;

  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    aceleracion = new PVector(-0.001, 0.01);
  }
  
  void refrescar() {
    velocity.add(aceleracion);
    location.add(velocity);
    velocity.limit(10);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(175);
    ellipse(location.x, location.y, 50, 50);
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}