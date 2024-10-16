// Roan Hardin | ReachTheClouds | 9 Oct 2024

Character c1;
boolean play;
void setup() {
size(500,500);
  c1 = new Character();
  play = false;
}
void draw() {
  if (play == false) {
    startScreen();
  } else {
    c1.display();
  }
}

void mousePressed() {
}

void keyPressed() {
}

void startScreen() {
  background(0);
  fill(255);
  text("Click to start!", width/2, height/2);
  if (mousePressed || keyPressed) {
    play = true;
  }
}
