//Roan Hardin
// InfoPanel Class to display game information
class InfoPanel {
  int height;
  int lives;
  int level;
  float timer;
  
  InfoPanel(int initialHeight, int initialLives, int initialLevel) {
    height=initialHeight;
   
    lives = initialLives;
    level = initialLevel;
    timer = 0;
  }
  
  // Call this function to update score
  void updateHeight() {
   height =c1.playerY;
  }

 
  
  // Call this function to update lives
  void updateLives(int change) {
    lives += change;
  }
  
  // Call this function to increase level
  void nextLevel() {
    level += 1;
  }

  // Call this function to update the timer
  void updateTimer(float deltaTime) {
    timer += deltaTime;
  }

  // Display the panel with information
  void display() {
    // Draw background for info panel
    fill(50, 50, 50, 150); // Semi-transparent background
    rect(10, 10, 200, 100);
    
    // Set text properties
    fill(255);
    textSize(12);
    
    // Display the score
    text("Height: " + height, 20, 30);
    
   
    
    // Display the lives
    text("Lives: " + lives, 20, 70);
    
    // Display the level
    text("Level: " + level, 20, 90);
    
    // Display the timer
    text("Time: " + nf(timer, 0, 2), 140, 30); // Formatted to 2 decimal places
  }
}
