class UI {
  
  PFont font;
  
  UI() {
    font = loadFont("Georgia.vlw");
    imageMode(CENTER);
  }
  
  void update() {
    fill(#ffffff);
    stroke(#ffffff);
    textLeading(15);
    textFont(font);
    text(control.text,10,10,380,300);    
    
    if (control.page == 0) {
      cursor(ARROW);
      control.text = "¡Presioná la barra espaciadora el vestido más blanco 5 veces para ganar!\n\n\n\n\n\n\n\n\n\n\n\n\n\n[presioná la barra espaciadora para iniciar]";
    } else if (control.page == 1) {
      noCursor();
      control.text = "";
    } else if (control.page == 2) {
      cursor(ARROW);
      control.text = "¡Lo lográste! ¡Felicidades!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[presioná la barra espaciadora para volver a jugar]";
    } else if (control.page == 3) {
      cursor(ARROW);
      control.text = "No lo lograste, qué lástima...\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[presioná la barra espaciadora para volver a jugar]";
    }
    
  }
  
}
