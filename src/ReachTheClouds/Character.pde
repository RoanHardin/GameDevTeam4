//Finn Thompson|1A
import processing.sound.*;
class Character {
  // Member Variables
  int  w, h, lives;
  PImage c1;
  int playerX = 100;
  int playerY = 100;
  int speed = 5;
  SoundFile jump1;
 


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
   boolean intersect(Trap t1) {
    float d = dist(x,y,t1.x,t1.y);
    if (d<t1.diam/2) {
      lives -= 1;
      jump1.play();
      return true;
    } else {
      return false;
    }
  }
}
