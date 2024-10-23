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
  cloudY = int(random(height));
  speedX = int(random(-5, 5));
  speedY = int(random(-5, 5));
  }
void move (){
// Update object position
  cloudX += speedX;
  cloudY += speedY;

  // Check for collision with edges of the window
  if (cloudX < 0 || cloudX > width) {
    speedX *= -1;
  }
  if (cloudY < 0 || cloudY > height) {
    speedY *= -1;
  }



}
  //member methods
  void display () {
    f1.resize(128,128);
    image(f1, cloudX, cloudY);
  }
}
