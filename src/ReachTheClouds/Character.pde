//Finn Thompson|1A
class Character {
  // Member Variables
  int  z, w, h, lives;
  PImage c1;
  int playerX = 100;
int playerY = 100;
int speed = 5;


  // Constructor
  Character() {
    
    
    z = 0;
    w = 50;
    h = 50;
    lives = 3;
    c1 = loadImage("New Piskel.png");
  }


  // Member Methods
  void display() {
    imageMode(CENTER);
    c1.resize(50,50);
    image(c1,playerX,playerY);
  }
void draw(){
// Player control
  if (keyPressed) {
    if (keyCode == UP) {
      playerY = playerY+10;
    }
    else if (keyCode == DOWN) {
      playerY = playerY-10;
    }
    else if (keyCode == LEFT) {
      playerX = playerX-10;
    }
    else if (keyCode == RIGHT) {
      playerX = playerX+10;
    }
    fill(0);

  }




}


}
