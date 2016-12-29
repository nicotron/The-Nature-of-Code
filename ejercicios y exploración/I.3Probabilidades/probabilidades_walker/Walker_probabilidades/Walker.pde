class Walker {
  //Objects have data.
  int x;
  int y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  void step() {
    //0, 1, 2, or 3
    float r = random(1);
    //A 40% chance of moving to the right!
    if (r < 0.5) {
      x++;
    } else {
      y++;
    }
  }
}