//Video explicación https://youtu.be/SOgcCrp5V_c

Control control;

void setup() {
  size(400,300);
  noSmooth();
  control = new Control();
}

void draw() {
  background(#000000);
  control.update();
}

void keyPressed() {
  control.keyboard();
}
