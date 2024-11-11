//Memphis BLack
class OtherObject {
  // Member Variables
  int x, y, z, size;
  PImage o1;

  // Constructor
  OtherObject() {
    x = 0;
    y = 0;
    z = 0;
    size = 100;
    o1 = loadImage("");
  }
  // Member Methods
  void display() {
    imageMode(CENTER);
    o1.resize(50, 50);
    image(o1, x, y);
  }
}
