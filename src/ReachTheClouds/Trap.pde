//Finn Thompson
class Trap {
  // Member Variables
  int x, y, z, size;
  PImage t1;
  int diam = int(random(100));

  // Constructor
  Trap() {
    x = 115;
    y = 200;
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

boolean intersect(Character c1) {
  float d = dist(x,y,c1.playerX,c1.playerY);
    if (d<40) { // refine the collision detection
      return true;
    } else {
      return false;
    }
  }
