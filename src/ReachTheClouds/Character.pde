//Finn Thompson|1A
class Character {
  // Member Variables
  int  w, h, lives;
  PImage c1;
  int playerX = 100;
  int playerY = 100;
  int speed = 5;


  // Constructor
  Character() {
    w = 50;
    h = 50;
    lives = 3;
    c1 = loadImage("New Piskel.png");
  }


  // Member Methods
  void display() {
    imageMode(CENTER);
    c1.resize(50, 50);
    image(c1, playerX, playerY);
  }
  void move() {
    // Player control
  if (keyPressed) {
    if (keyCode == UP) {
      playerY -= speed;
    }
    if (keyCode == DOWN) {
      playerY += speed;
    }
    if (keyCode == LEFT) {
      playerX -= speed;
    }
    if (keyCode == RIGHT) {
      playerX += speed;
    }
  }
  if (keyPressed) {
    if (key == 'w') {
      playerY -= speed;
    }
    if (key == 's') {
      playerY += speed;
    }
    if (key =='a') {
      playerX -= speed;
    }
    if (key == 'd') {
      playerX += speed;
    }
  }
  }
}
