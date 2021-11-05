class Control {
  
  UI ui = new UI();
  Vestido[] v_array = new Vestido[10];
  Ojo ojo = new Ojo();
  String text = "false";
  int level = 0;
  int counter = 0;
  int page = 0;
  
  Control() {
    for (int i = 0; i < v_array.length; i = i+1) {
      v_array[i] = new Vestido(255/(i+1));
    }
  }
  
  void update() {
    ui.update();
    if (page == 1) {
      ojo.update();
      for (int i = 0; i < v_array.length; i += 1) {
        v_array[i].update();
      }
    }
    ojo.checkWin();
  }
  
  void keyboard() {
    if (page == 0) {
      page = 1;
    } else if (page == 1) {
      v_array[0].keyboard();
    } else if (page == 2) {
      page = 0; counter = 0; level = 0;
    } else if (page == 3) {
      page = 0; counter = 0; level = 0;
    }
  }
  
}
