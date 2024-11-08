// Roan Hardin | ReachTheClouds | 9 Oct 2024
import processing.sound.*;
InfoPanel panel;
Box box;
Cloud cloud;
Platform platform;
Character c1;
Checkpoint p1;
boolean play;
Timer t1;
PImage b01, b02, end1;
Trap trap;
ArrayList<Bomb> bombs = new ArrayList<Bomb>();
SoundFile jump1;


void setup() {
  size(500, 500);
  panel = new InfoPanel(0, 3, 1); // Start with 0 score, 100 health, 3 lives, and level 1
  box = new Box ();
  trap = new Trap();
  platform = new Platform();
  cloud = new Cloud();
  c1 = new Character();
  p1 = new Checkpoint();
  play = false;
  t1 = new Timer(1000);
  t1.start();
  b01 = loadImage("StrScrn.png");
  b02 = loadImage("bckg.png");
  end1 = loadImage("endscrn.png");
  background(255);
  jump1 = new SoundFile(this, "jump1.wav");
}
void draw() {
  if (keyPressed) {
    if (key == ' ') {
      jump1.play();
    }
  } else {
    fill(255);
  }
  rect(25, 25, 50, 50);
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
  panel.updateTimer(1.0 / frameRate); // Increment based on frame rate

  // Example of changing data over time (can be removed or replaced with real game logic)
  if (frameCount % 60 == 0) {
    panel.updateHeight();     // Increase score every second
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
void gameOver() {
  background(end1);
  text("Score:", width/2, height/2-50);
}
