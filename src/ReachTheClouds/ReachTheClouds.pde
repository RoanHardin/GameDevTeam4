// Roan Hardin | ReachTheClouds | 9 Oct 2024

Box box;
Cloud cloud;
Character c1;
boolean play;
void setup() {
size(500,500);
  
  box = new Box ();
  cloud = new Cloud();
  c1 = new Character();
  play = false;
}
void draw() {
  if (play == false) {
    startScreen();
  } else {
    playScreen();
    box.display();
    cloud.display();
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
void playScreen(){
  background(255);
  fill(0);

}
