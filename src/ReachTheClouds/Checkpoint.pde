//Memphis Black
class Checkpoint {
  // Member Variables
  int x, y, z;
  PImage p1;


  //Constructor
  Checkpoint() {
    x =400;
    y = 170;
    z = 0;
    p1 = loadImage("Checkpoint.png");
  }


  // Member Methods
  void display() {
    imageMode(CENTER);
    p1.resize(50, 50);
    image(p1, x, y);
    
  }




}
