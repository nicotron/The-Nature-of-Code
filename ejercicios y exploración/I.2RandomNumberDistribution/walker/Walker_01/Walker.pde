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
    point(x,y);
  }
  
  void step() {
//0, 1, 2, or 3
    int choice = int(random(4));
    
    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else {
      y--;
    }
  }
}