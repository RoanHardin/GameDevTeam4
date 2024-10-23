class Platform {
  // Member Variables
  int x, y, z;
  PImage p01;


  //Constructor
  Platform() {
    p01 = loadImage("platform.png");
    x = 250;
    y = 250;
    z = 250;
  }


  //Member Methods
  void display() {
    imageMode(CENTER);
    p01.resize(150,37);
    image(p01, x, y);
  }
}
