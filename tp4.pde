String debugtext = "El Emperador estuvo aquí";
String[] array_text1 = new String[32];
String[] array_btn1_text = new String[32];
String[] array_btn2_text = new String[32];
String[] array_btn1_dir = new String[32];
String[] array_btn2_dir = new String[32];
String[] array_img1 = new String[32];
String[] array_img2 = new String[32];
String[] array_bg = new String[32];
PImage[] array_img = new PImage[9];
int page = 1;
int empleados = 0;

/* UI */
PFont font;
int btn_width = 140;
int btn_height = 90;
boolean btn1_hover = false;
boolean btn2_hover = true;
boolean btn1_show = false;
PImage img_0;  PImage img_1;  PImage img_2;  
PImage img_3;  PImage img_4;  PImage img_5;  
PImage img_6;  PImage img_7;

void setup() {
  size(400, 300);
  noSmooth();
  font = loadFont("Georgia.vlw");
  array_text1 = loadStrings("data/arrays/array_text1.txt");
  array_btn1_text = loadStrings("data/arrays/array_btn1_text.txt");
  array_btn2_text = loadStrings("data/arrays/array_btn2_text.txt");
  array_btn1_dir = loadStrings("data/arrays/array_btn1_dir.txt");
  array_btn2_dir = loadStrings("data/arrays/array_btn2_dir.txt");
  array_img1 = loadStrings("data/arrays/array_img1.txt");
  array_img2 = loadStrings("data/arrays/array_img2.txt");
  array_bg = loadStrings("data/arrays/array_bg.txt");

  for (int i = 0; i < 8; i++) {
    array_img[i] = loadImage("data/img/" + i + ".png");
  }
}

boolean isMouseInside(int x1, int x2, int y1, int y2) {
  if (mouseX >= x1 && mouseX <= x2 && mouseY >= y1 && mouseY <= y2) {
    return true;
  } else {
    return false;
  }
}

void draw() {
  background(#000000);

  textFont(font);
  textLeading(15);

  /* --- UI --- */

  /* text1 */
  stroke(#ffffff);
  fill(#000000);
  rect(4, height-4, width-8, -(btn_height*2)-12);
  fill(#ffffff);
  text(array_text1[page], 8, height-(btn_height*2)-12, 240, 190);

  /* img1 */
  fill(#000000);
  rect(4, 4, 96, 96);
  image(array_img[int(array_img1[page])], 4, 4);

  /* img2 */
  rect(width-4, 4, -96, 96);
  image(array_img[int(array_img2[page])], width-100, 4);

  /* bg */
  rect(104, 4, 192, 96);
  if (page != 0) {
    image(array_img[int(array_bg[page])], 104, 4);
  }

  /* btn1 */
  if (array_btn1_text[page].equals("empty") == true || page == 0) {
    btn1_show = false;
    btn1_hover = false;
  } else { 
    btn1_show = true;
  }

  if (btn1_show) {
    if (isMouseInside(width-8-btn_width, width-8, height-(btn_height*2)-12, height-(btn_height*2)-12+btn_height)) {
      fill(#ffffff); 
      rect(width-8, height-(btn_height*2)-12, -btn_width, btn_height);
      fill(#000000); 
      text(array_btn1_text[page], width-144, height-(btn_height*2)-8, btn_width, btn_height);
      btn1_hover = true;
    } else {
      fill(#000000); 
      rect(width-8, height-(btn_height*2)-12, -btn_width, btn_height);
      fill(#ffffff); 
      text(array_btn1_text[page], width-144, height-(btn_height*2)-8, btn_width, btn_height);
      btn1_hover = false;
    }
  }

  /* btn2 */
  if (isMouseInside(width-8-btn_width, width-8, height-btn_height-8, height-8)) {
    fill(#ffffff); 
    rect(width-8, height-btn_height-8, -btn_width, btn_height);
    fill(#000000); 
    text(array_btn2_text[page], width-144, height-(btn_height*1)-4, btn_width, btn_height);
    btn2_hover = true;
  } else {
    fill(#000000); 
    rect(width-8, height-btn_height-8, -btn_width, btn_height);
    fill(#ffffff); 
    text(array_btn2_text[page], width-144, height-(btn_height*1)-4, btn_width, btn_height);
    btn2_hover = false;
  }

  if (btn1_hover == true || btn2_hover == true) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}

void mousePressed() {

  if (btn1_hover == true && page > 0) {

    if (page == 8 || page == 13) {
      empleados++;
    }

    page = int(array_btn1_dir[page]);
  }

  if (btn2_hover == true) {

    if (page == 0) {
      page = 1;
      empleados = 0;
    } else if (page == 18) {
      if (empleados >= 2) { 
        page = 19;
      } else { 
        page = 21;
      }
    } else {
      page = int(array_btn2_dir[page]);
    }
  }
}
