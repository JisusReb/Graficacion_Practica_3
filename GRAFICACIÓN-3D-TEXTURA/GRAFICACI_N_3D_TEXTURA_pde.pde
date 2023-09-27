PShape rectangle;
PImage txtr;
float theta;

void setup() {
  size (550, 550, P3D);
  txtr = loadImage("1.jpg","2.jpg");
  rectangle = loadShape("untitled.obj");
  rectangle.setTexture(txtr); 
}


void draw () {
  background (150);
  //lights();

  pushMatrix();
  translate (width/2, (height/2)+100);
  rotate(28);
  rotateY(theta);
  scale (100);
  shape (rectangle);
  popMatrix();

  theta+=0.01; //increment angle
}
