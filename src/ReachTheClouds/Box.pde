class Box {
// Member Variables
int x,y,z;
PImage b1;


//Constructor
Box() {
x = 0;
y = 0;
z = 0;
b1 = loadImage("");
}


//Member Methods
void display() {
imageMode(CENTER);
b1.resize(50,50);
image(b1,x,y):

}

}
