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
