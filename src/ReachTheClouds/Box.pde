// Roan Hardin
class Box {
  // Member Variables
  int x, y, z;
  PImage b1;


  //Constructor
  Box() {
    b1 = loadImage("box.jpeg");
    x = 50;
    y = 50;
    z = 50;
  }


  //Member Methods
  void display() {
    imageMode(CENTER);
    b1.resize(50, 50);
    image(b1, x, y);
  }
}
