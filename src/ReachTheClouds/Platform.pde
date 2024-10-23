class Platform {
  // Member Variables
  int x, y, z;
  PImage p01;


  //Constructor
  Platform() {
    p01 = loadImage("platform.png");
    x = 50;
    y = 50;
    z = 50;
  }


  //Member Methods
  void display() {
    imageMode(CENTER);
    p01.resize(50, 50);
    image(p01, x, y);
  }
}
