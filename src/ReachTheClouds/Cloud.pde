// Roan Hardin
class Cloud {
// member variables
int x,y,z,size;
PImage f1;

// constructor
Cloud() {
f1 = loadImage("cloud.png");
x = 200;
y = 200;
z = 200;
}

//member methods
void display () {
  f1.resize(100,50);
image(f1,x,y);
}







}
