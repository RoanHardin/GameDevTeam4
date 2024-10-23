class Trap {
  // Member Variables
  int x, y, z, size;
  PImage t1;

  // Constructor
  Trap() {
    x = 0;
    y = 0;
    z = 0;
    size = 100;
    t1 = loadImage("trapz.png");
  }
  // Member Methods
  void display() {
    imageMode(CENTER);
    t1.resize(50, 50);
    image(t1, x, y);
  }

  void move(char dir) {
  }
}
