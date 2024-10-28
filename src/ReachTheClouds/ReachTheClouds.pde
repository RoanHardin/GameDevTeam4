// Roan Hardin | ReachTheClouds | 9 Oct 2024

InfoPanel panel;
Box box;
Cloud cloud;
Platform platform;
Character c1;
Checkpoint p1;
boolean play;
Timer timer;
PImage b01, b02;
Trap trap;



void setup() {
  size(500, 500);
    panel = new InfoPanel(0, 100, 3, 1); // Start with 0 score, 100 health, 3 lives, and level 1
  box = new Box ();
  trap = new Trap();
  platform = new Platform();
  cloud = new Cloud();
  c1 = new Character();
  p1 = new Checkpoint();
  play = false;
  timer = new Timer(1000);
  timer.start();
  b01 = loadImage("StrScrn.png");
  b02 = loadImage("bckg.png");
}
void draw() {
  if (timer.isFinished()) {
  }
  if (play == false) {
    startScreen();
  } else {
    playScreen();
    box.display();
    cloud.display();
    platform.display();
    cloud.move();
    p1.display();
    c1.display();
    c1.move();
    trap.display();
  }
   panel.updateTimer(1.0 / frameRate); // Increment based on frame rate
    panel.display();
     // Example of changing data over time (can be removed or replaced with real game logic)
  if (frameCount % 60 == 0) {
    panel.updateScore(10);     // Increase score every second
    panel.updateHealth(-1);    // Decrease health slowly
  }
}


void mousePressed() {
}

void keyPressed() {
}

void startScreen() {
  background(b01);
  fill(255);
  text("", width/2, height/2);
  if (mousePressed || keyPressed) {
    play = true;
  }
}
void playScreen() {
  background(b02);
  fill(0);
}
