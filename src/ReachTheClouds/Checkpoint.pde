class Checkpoint {
// Member Variables
int x,y,z;
PImage p1;


//Constructor
Checkpoint() {
x = 250;
y = 250;
z = 0;
p1 = loadImage("Checkpoint.png");
}


// Member Methods
void display() {
  imageMode(CENTER);
  p1.resize(50,50);
image(p1,x,y);
}



}
