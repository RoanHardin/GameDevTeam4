// Roan Hardin | ReachTheClouds | 9 Oct 2024
import processing.sound.*;
InfoPanel panel;
Box box;
Cloud cloud;
int welcomeCounter;
Platform platform;
Character c1;
Checkpoint p1;
boolean play, lore;
Timer t1, wTime;
PImage b01, b02, end1, story1, story2, story3;
//Trap trap;
ArrayList<Bomb> bombs = new ArrayList<Bomb>();
ArrayList<Character> characters = new ArrayList<Character>();
SoundFile jump1;
ArrayList<Trap> traps = new ArrayList<Trap>();

void setup() {
  size(500, 500);
  traps.add(new Trap(115, 200));
  panel = new InfoPanel(0, 3, 1); // Start with 0 score, 100 health, 3 lives, and level 1
  box = new Box ();
  //trap = new Trap();
  platform = new Platform();
  cloud = new Cloud();
  c1 = new Character();
  p1 = new Checkpoint();
  play = false;
  t1 = new Timer(1000);
  t1.start();
  wTime = new Timer(5000);
  wTime.start();
  welcomeCounter = 0;
  b01 = loadImage("StrScrn.png");
  b02 = loadImage("bckg.png");
  end1 = loadImage("endscrn.png");
  story1 = loadImage("story1.png");
  story2 = loadImage("story2.png");
  story3 = loadImage("story3.png");
  background(255);
  jump1 = new SoundFile(this, "jump1.wav");
}
void draw() {
  if (keyPressed) {
    if (key == ' ') {
      if (!jump1.isPlaying()) {
        jump1.play();
      }
    }
  } else {
    fill(255);
  }
  rect(25, 25, 50, 50);
  
  if (play == false) {
    startScreen();
  }
  if (play == true) {
    playScreen();
    for (int i = 0; i < traps.size(); i++) {
      Trap t = traps.get(i);
      t.display();
      if (t.intersect(c1)) {
        c1.lives --;
        c1.playerX = 100;
        c1.playerY = 100;
      }
    }
    box.display();
    cloud.display();
    platform.display();
    cloud.move();
    p1.display();
    c1.display();
    c1.move();
    //trap.display();
    panel.display();
    if (t1.isFinished()) {
      bombs.add(new Bomb());
      t1.start();
    }
    for (int i = 0; i < bombs.size(); i++) {
      Bomb bomb = bombs.get(i);
      bomb.display();
      bomb.move();
      if (bomb.reachedBottom()) {
        bombs.remove(i);
      }
    }
  }
  if (lore == true){
    loreScreen();
  if (wTime.isFinished()) {
    wTime.start();
    welcomeCounter++;

  }
  switch(welcomeCounter) {
  case 0:
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text("you are about to experience", 250, 250);
    wTime.totalTime=2000;
    break;
  case 1:
    fill(255);
    text("a journey like no other", 250,250);
    wTime.totalTime=2000;
    break;
    case 2:
    text("are you ready", 250, 250);
  default:
    println("None");
    break;
}

  }
  panel.updateTimer(1.0 / frameRate); // Increment based on frame rate

  // Example of changing data over time (can be removed or replaced with real game logic)
  if (frameCount % 60 == 0) {
    panel.updateHeight();     // Increase score every second
  }

  //for (int i = 0; i < characters.size(); i++) {
  //  Character c1 = characters.get(i);
  //  for (int j = 0; j< traps.size(); j++) {
  //    Trap t1 = traps.get(j);
  //    if (c1.intersect(t1)) {
  //      c1.lives+=1;
  //    }
  //  }
  //}
}

void mousePressed() {
}

void keyPressed() {
}

void startScreen() {
  background(b01);

  text("", width/2, height/2);
  if (mousePressed) {
    lore = true;
  }
  if(keyPressed){
  play = true;
}
  
}
void playScreen() {
  background(b02);
  
  
}
void loreScreen(){
  background(story1);

}
void gameOver() {
  background(end1);
  text("Score:", width/2, height/2-50);
}

//Step 1: Initialize Timer

//Action: Start a timer when the game begins.
//Purpose: Track how long the game has been running from the start screen to the gameplay.
//Step 2: Display Game Title and Timer Start

//Text: "Welcome to [Game Title]!"
//Timer: Show a clock or counter starting at 0:00 (minutes:seconds).
//Step 3: Initialize Game Setup

//Action: As players choose characters, settings, etc., the timer continues running in the background.
//Step 4: Show Game Loading Screen

//Text: "Loading your adventure..."
//Timer: Display time elapsed (e.g., "0:30" after 30 seconds of loading).
//step 5: Display First Cutscene or Intro (If Applicable)

//Text: "Prepare for the journey ahead!"
//Timer: Time continues to increase as the game intro runs.
//Step 6: Show Character Selection (If Applicable)

//Text: "Choose your hero."
//Timer: Time continues to count up as the player interacts with the selection.
//Step 7: Confirm Game Start

//Text: "Are you ready to begin?"
//Timer: At this point, the game timer is running steadily.
//Step 8: Countdown to Start

//Text: "Game starts in 3... 2... 1..."
//Timer: Timer still counts up, showing how much time has passed from the start of the game setup.
//Step 9: Gameplay Begins

//Text: "Let the adventure begin!"
//Timer: From this point onward, track game time actively (e.g., display "0:00" or "01:30" as game begins).
//Step 10: Pause Option (Optional)

//Text: "Press 'P' to pause the game."
//Timer: When paused, the timer stops. On resume, it continues from where it left off.
//Step 11: Timer Display Throughout Gameplay

//Text: The timer is displayed at the top or corner of the screen during the game.
//Timer: Show minutes and seconds counting upward (e.g., "3:45" for 3 minutes and 45 seconds of gameplay).
//Step 12: End of Game or Game Over

//Text: "Game Over! Your total time is: 12:35"
//Timer: Show the final time the player spent in the game (e.g., "Total time played: 15:45").
