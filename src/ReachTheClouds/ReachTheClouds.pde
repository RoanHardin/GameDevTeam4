// Roan Hardin | ReachTheClouds | 9 Oct 2024

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
