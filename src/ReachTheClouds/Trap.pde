class Trap {
  // Member Variables
  int x, y, z, size;
  PImage t1;

  // Constructor
  Trap() {
    x = 300;
    y = 300;
    z = 0;
    size = 100;
    t1 = loadImage("trapz.png");
  }
  // Member Methods
  void display() {
    imageMode(CENTER);
    t1.resize(100, 29);
    image(t1, x, y);
  }

  void move(char dir) {
  }
}
