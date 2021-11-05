class Ojo {
  
  int x = 20;
  int y = 20;
  PImage img;
  
  Ojo() {
    img = loadImage("img/9.png");
  }
  
  void update() {
    image(img,this.x,this.y);
    this.x = mouseX;
    this.y = mouseY;
  }
  
  void checkWin() {
    if (control.counter == 5 && control.level == 5) {
      control.page = 2;
    } else if (control.counter == 5 && control.level < 5) {
      control.page = 3;
    } else {
      control.page = control.page;
    }
  }
  
}
