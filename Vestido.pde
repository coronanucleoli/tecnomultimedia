class Vestido {

  int alpha;
  PImage img;
  float x = width/2; 
  float y = height/2;
  int _ox; 
  int _oy;

  Vestido(int _a) {
    this.alpha = _a;
    this.img = loadImage("img/8.png");
  }

  void update() {
    this.x = int(random(width/2-20*control.level, width/2+20*control.level));
    this.y = int(random(height/2-15*control.level, height/2+15*control.level));
    tint(255, this.alpha);
    image(this.img, this.x, this.y);
    tint(255,255);
  }

  boolean contactTrue() {
    float _i = dist(this.x, this.y, mouseX, mouseY);
    if (_i < 48) {
      return true;
    } else { 
      return false;
    }
  }

  void keyboard() {
    if (key == ' ') {
      if (alpha == 255) {
        if (this.contactTrue() == true) {
          control.level += 1;
          control.counter += 1;
          println(control.level + "-" + control.counter);
        } else if (this.contactTrue() == false) {
          control.counter += 1;
          println("oh no... - " + control.level + "/" + control.counter);
        }
      }
    }
  }
}
