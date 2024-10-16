class Checkpoint {
// Member Variables
int x,y,z;
PImage p1;


//Constructor
Checkpoint() {
x = 0;
y = 0;
z = 0;
p1 = loadImage("");
}


// Member Methods
void display() {
  imageMode(CENTER);
  p1.resize(x,y);
image(p1,x,y);
}



}
