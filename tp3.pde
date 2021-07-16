// Video explicacion: https://youtu.be/c57DVBvIIss

boolean rotate_bool = false;
boolean button_01_hover = false;
boolean button_02_hover = false;
int rotate_value = 0;
int rotate_random = 0;
String text1 = "Clic para iniciar\nanimación";
color test;

void setup() {
  background(#81B300); size(380,430);
  frameRate(60);
}

void draw() {
  if (mouseX >= 13 && mouseX <= 105 && mouseY >= 380 && mouseY <= 420) {
    button_01_hover = true;
  } else { button_01_hover = false; }
  
  if (mouseX >= 357-105 && mouseX <= 357 && mouseY >= 380 && mouseY <= 420) {
    button_02_hover = true;
  } else { button_02_hover = false; }
  
  background(#81B300);
  
  translate(20,20);
  
  rotate_value ++;
  
  
  textAlign(LEFT);
  if (rotate_bool == true) {
    fill(#000000); stroke(#000000); rect(-7,360,85,40);
    fill(#ffffff);
    text(text1,0,377);
    } else if (rotate_bool == false) {
    fill(#81B300); stroke(#000000); rect(-7,360,95,40);
    fill(#000000);
    text1 = "Clic para iniciar\nanimación";
    text(text1,0,377);
    }
  
  fill(#81B300); stroke(#000000); rect(347,360,-105,40);
  textAlign(RIGHT);fill(#000000); text("Clic para reiniciar\nel programa",350,377);
  
  for (int a1 = 0; a1 < 18*18; a1 = a1+1) {
    pushMatrix();
    
    if (rotate_bool == false) {
      rotate(radians(22*a1));
    } else if (rotate_bool == true) {
      rotate(radians((rotate_value*a1)/rotate_random));
    }
    
    noStroke();
      fill(#000000); ellipse(-2,0,15,15);
      fill(#ffffff); ellipse(2,0,15,15);
      fill(#0000ee); ellipse(0,0,15,15);
    popMatrix();
    translate(20,0);
    
    if (a1 == 17 ||
        a1 == 35 ||  a1 == 53 ||  a1 == 71 ||  a1 == 89 ||
        a1 == 107 || a1 == 125 || a1 == 143 || a1 == 161 ||
        a1 == 179 || a1 == 197 || a1 == 215 || a1 == 233 ||
        a1 == 251 || a1 == 269 || a1 == 287 || a1 == 305
        ) {
      translate(-360,20);
    }
    
  }
}

void mouseClicked() {
  if (button_01_hover == true) {
    if (rotate_bool == false) {
      rotate_bool = true;
      rotate_random = int(random(15,60));
      text1 = "Animación en\nprogreso";
    }
  }
  
  if (button_02_hover == true) {
    if (rotate_bool == true) {
      rotate_bool = false;
    }
  }
}
