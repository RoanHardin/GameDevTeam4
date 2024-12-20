// Roan Hardin
class Bomb {
  float x, y;   // Variables for location of raindrop
  float speed;  // Speed of raindrop
  color c;
  float r;      // Radius of raindrop
PImage bomb;


  Bomb() {
    r = 8;                   // All raindrops are the same size
    x = random(width);       // Start with a random x location
    y = -r*4;                // Start a little above the window
    speed = random(1, 5);    // Pick a random speed
    c = color(50, 100, 150); // Color
  }

  // Move the raindrop down
  void move() {
    // Increment by speed
    y += speed;
  }

  // Check if it hits the bottom
  boolean reachedBottom() {
    // If we go a little beyond the bottom
    if (y > height + r*4) { 
      return true;
    } else {
      return false;
    }
  }

  // Display the raindrop
  void display() {
    bomb = loadImage("bomb.png");
    // Display the drop
    fill(c);
    noStroke();
    bomb.resize(50,50);
    for (int i = 2; i < r; i++ ) {
      image(bomb, x, y);
    }
  }

  // If the drop is caught
  void caught() {
    // Stop it from moving by setting speed equal to zero
    speed = 0; 
    // Set the location to somewhere way off-screen
    y = -1000;
  }
}
