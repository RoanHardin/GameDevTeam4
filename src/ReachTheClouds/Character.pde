//Finn Thompson|1A
class Character {
  // Member Variables
  int x, y, z, w, h, speed, lives;
  PImage c1;


  // Constructor
  Character() {
    x = 0;
    y = 0;
    z = 0;
    w = 50;
    h = 50;
    speed = 5;
    lives = 3;
    c1 = loadImage("");
  }

  // Member Methods
  void display() {
    imageMode(CENTER);
    c1.resize(50,50);
    image(c1,x,y);
  }

  void move(char dir) {
  }
}
