// Roan Hardin
class Cloud {
  // member variables
  int cloudX, cloudY, z, size;
  int speedX, speedY;
  PImage f1;

  // constructor
  Cloud() {
    f1 = loadImage("cloud.png");
    cloudX = int(random(width));
    cloudY = int(random(0, 150));
    
      speedX = int(random(-2, 2));
    if(speedX==0){
    speedX = int(random(-2, 2));
    }
  }
  void move () {
    // Update object position
    cloudX += speedX;
    cloudY += speedY;

    // Check for collision with edges of the window
    if (cloudX < 0 || cloudX > width) {
      speedX *= -1;
    }
  }




  //member methods
  void display () {
    f1.resize(128, 128);
    image(f1, cloudX, cloudY);
  }
}
