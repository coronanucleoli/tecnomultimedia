// Secuencia de creditos inspirada en la pelicula Scott Pilgrim vs. The World
// El proyecto usa la librería oficial de sonido de Processing

import processing.sound.*;
SoundFile song;

PFont fontana_principale;
String testo_0; String testo_1;
String testo_2; String testo_3;
String testo_4; String testo_5;
String testo_6; String testo_7;
String testo_8;
int testo_x_01; int testo_y_01;
int testo_x_02; int testo_y_02;
int testo_x_03; int testo_y_03;
int immagine_attuale_1_x; int immagine_attuale_1_y;
int immagine_attuale_2_x; int immagine_attuale_2_y;
int immagine_attuale_3_x; int immagine_attuale_3_y;
int immagine_attuale_4_x; int immagine_attuale_4_y;
int testo_agitazione;
String testo_attuale = "test"; int testo_numero = 0;
color colore_01; color colore_02;
color colore_sfondo_00;
color colore_sfondo_01; color colore_sfondo_02;
color colore_sfondo_03; color colore_sfondo_04;
color colore_sfondo_05; color colore_sfondo_06;
PImage immagine_11; PImage immagine_12; PImage immagine_13; PImage immagine_14;
PImage immagine_21; PImage immagine_22; PImage immagine_23; PImage immagine_24;
PImage immagine_31; PImage immagine_32; PImage immagine_33; PImage immagine_34;
PImage immagine_41; PImage immagine_42; PImage immagine_43; PImage immagine_44;
PImage immagine_51; PImage immagine_52; PImage immagine_53; PImage immagine_54;
PImage immagine_61; PImage immagine_62; PImage immagine_63; PImage immagine_64;
int colore_attuale;
int colore_sfondo_attuale;
PImage immagine_attuale_1; PImage immagine_attuale_2; PImage immagine_attuale_3; PImage immagine_attuale_4;
int contabile;
boolean immagine_puoi_disegnare = false;

void setup() {
  size(555,300);
  
  fontana_principale = loadFont("Eurostile-Black-48.vlw");
  colore_01 = #F5E9DD;
  colore_sfondo_00 = #000000;
  colore_sfondo_01 = #3C1F22;
  colore_sfondo_02 = #373D4E;
  colore_sfondo_03 = #374E4A;
  colore_sfondo_04 = #4E3745;
  colore_sfondo_05 = #4E373D;
  colore_sfondo_06 = #373D4E;
  colore_sfondo_attuale = colore_sfondo_00;
  colore_attuale = colore_01;
  immagine_11 = loadImage("11.png"); immagine_12 = loadImage("12.png"); immagine_13 = loadImage("13.png"); immagine_14 = loadImage("14.png");
  immagine_21 = loadImage("21.png"); immagine_22 = loadImage("22.png"); immagine_23 = loadImage("23.png"); immagine_24 = loadImage("24.png");
  immagine_31 = loadImage("31.png"); immagine_32 = loadImage("32.png"); immagine_33 = loadImage("33.png"); immagine_34 = loadImage("34.png");
  immagine_41 = loadImage("41.png"); immagine_42 = loadImage("42.png"); immagine_43 = loadImage("43.png"); immagine_44 = loadImage("44.png");
  immagine_51 = loadImage("51.png"); immagine_52 = loadImage("52.png"); immagine_53 = loadImage("53.png"); immagine_54 = loadImage("54.png");
  immagine_61 = loadImage("61.png"); immagine_62 = loadImage("62.png"); immagine_63 = loadImage("63.png"); immagine_64 = loadImage("64.png");
  immagine_attuale_1 = immagine_11; immagine_attuale_1_x = 200; immagine_attuale_1_y = 150;
  immagine_attuale_2 = immagine_12; immagine_attuale_2_x = 200; immagine_attuale_2_y = 150;
  immagine_attuale_3 = immagine_13; immagine_attuale_3_x = 200; immagine_attuale_3_y = 150;
  immagine_attuale_4 = immagine_14; immagine_attuale_4_x = 200; immagine_attuale_4_y = 150;
  
  testo_0 = "luciano coronel\npresenta";
  testo_1 = "LAS VESTIDO NUEVO\nDEL EMPERADOR\ninspirado en\nSCOTT PILGRIM\nVS. THE WORLD";
  testo_2 = "protagonizado por";
  testo_3 = "EL REY\ncomo\nEL REY";
  testo_4 = "NIÑO SIN\nNOMBRE 1\ncomo\nEL NENE QUE\nLE GRITÓ AL REY";
  testo_5 = "EL PRIMER\nTEJEDOR\ncomo\nAL PRIMERO QUE\nECHARON DEL PUEBLO";
  testo_6 = "EL SEGUNDO\nTEJEDOR\ncomo\nEL QUE LOGRÓ\nIRSE CON LA PLATA";
  testo_7 = "EL BARDO QUE\n MÚSICALIZÓ EL EVENTO\ncomo\nCOMPOSITOR\nPRINCIPAL";
  testo_8 = "HANS CHRISTIAN\nANDERSEN\ncomo\nEL ESCRITOR\nDEL CUENTO ORIGINAL";
  frameRate(15);
  
  song = new SoundFile(this,"we-are-sex-bob-omb.mp3");
  if (song.isPlaying() == false || testo_numero == 0) {
    song.play();
  }
  
}

void draw() {  
  testo_x_01 = int(random((width/2)-1,(width/2)+1));
  testo_y_01 = int(random((height/2)-1,(height/2)+1));
  testo_x_02 = int(random((width/2)-testo_agitazione,(width/2)+testo_agitazione));
  testo_y_02 = int(random((height/2)-testo_agitazione,(height/2)+testo_agitazione));
  testo_x_03 = int(random((width/2)-testo_agitazione,(width/2)+testo_agitazione));
  testo_y_03 = int(random((height/2)-testo_agitazione,(height/2)+testo_agitazione));
  
  immagine_attuale_1_x = int(random(20,30));
  immagine_attuale_1_y = int(random(30,40));
  immagine_attuale_2_x = int(random(100,130));
  immagine_attuale_2_y = int(random(160,200));
  immagine_attuale_3_x = int(random(300,310));
  immagine_attuale_3_y = int(random(height/2-10-150,height/2+10-150));
  immagine_attuale_4_x = int(random(width/2-150,width/2));
  immagine_attuale_4_y = int(random(-50,-30));
  
  testo_agitazione = (int(dist(mouseX,mouseY,width/2,height/2))/10);
  
  if (testo_numero == 0) {
    testo_attuale = testo_0;
  } else if (testo_numero == 1) {
    testo_attuale = testo_1;
  } else if (testo_numero == 2) {
    testo_attuale = testo_2;
  } else if (testo_numero == 3) {
    testo_attuale = testo_3;
    colore_sfondo_attuale = colore_sfondo_01;
    immagine_puoi_disegnare = true;
  } else if (testo_numero == 4) {
    testo_attuale = testo_4;
    colore_sfondo_attuale = colore_sfondo_02;
    immagine_attuale_1 = immagine_21;
    immagine_attuale_2 = immagine_22;
    immagine_attuale_3 = immagine_23;
    immagine_attuale_4 = immagine_24;
  } else if (testo_numero == 5) {
    testo_attuale = testo_5;
    colore_sfondo_attuale = colore_sfondo_03;
    immagine_attuale_1 = immagine_31;
    immagine_attuale_2 = immagine_32;
    immagine_attuale_3 = immagine_33;
    immagine_attuale_4 = immagine_34;
  } else if (testo_numero == 6) {
    testo_attuale = testo_6;
    colore_sfondo_attuale = colore_sfondo_04;
    immagine_attuale_1 = immagine_41;
    immagine_attuale_2 = immagine_42;
    immagine_attuale_3 = immagine_43;
    immagine_attuale_4 = immagine_44;
  } else if (testo_numero == 7) {
    testo_attuale = testo_7;
    colore_sfondo_attuale = colore_sfondo_05;
    immagine_attuale_1 = immagine_51;
    immagine_attuale_2 = immagine_52;
    immagine_attuale_3 = immagine_53;
    immagine_attuale_4 = immagine_54;
  } else if (testo_numero == 8) {
    testo_attuale = testo_8;
    colore_sfondo_attuale = colore_sfondo_06;
    immagine_attuale_1 = immagine_61;
    immagine_attuale_2 = immagine_62;
    immagine_attuale_3 = immagine_63;
    immagine_attuale_4 = immagine_64;
  } else if (testo_numero == 9) {
    testo_attuale = "";
    colore_sfondo_attuale = colore_sfondo_00;
    immagine_puoi_disegnare = false;
  }
  
  background(colore_sfondo_attuale);
  
  if (immagine_puoi_disegnare == true && song.isPlaying() == true) {
    tint(255,125);
    image(immagine_attuale_1,immagine_attuale_1_x,immagine_attuale_1_y);
    image(immagine_attuale_2,immagine_attuale_2_x,immagine_attuale_2_y);
    image(immagine_attuale_3,immagine_attuale_3_x,immagine_attuale_3_y);
    image(immagine_attuale_4,immagine_attuale_4_x,immagine_attuale_4_y);
    tint(255,255);
  }
  
  textFont(fontana_principale);
  textAlign(CENTER,CENTER);
  fill(colore_attuale);
  textSize(48);
  text(testo_attuale,testo_x_01,testo_y_01);
  
  contabile++;
  
  fill(colore_attuale,30);
  textSize(49);
  text(testo_attuale,testo_x_01,testo_y_01);
  textSize(48);
  fill(colore_attuale,30);
  text(testo_attuale,testo_x_02,testo_y_02);
  text(testo_attuale,testo_x_03,testo_y_03);
  
  if (contabile == 58) {
    testo_numero++;
  } else if (contabile == 180) {
    testo_numero++;
  } else if (contabile == 217) {
    testo_numero++;
  } else if (contabile == 498) {
    testo_numero++;
  } else if (contabile == 780) {
    testo_numero++;
  } else if (contabile == 950) {
    testo_numero++;
  } else if (contabile == 1260) {
    testo_numero++;
  } else if (contabile == 1540) {
    testo_numero++;
  } else if (contabile == 1800) {
    testo_numero++;
  }
}
