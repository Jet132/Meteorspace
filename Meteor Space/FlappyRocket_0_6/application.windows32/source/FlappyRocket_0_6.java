import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class FlappyRocket_0_6 extends PApplet {


/*import processing.sound.*;
 SoundFile background;
 SoundFile point;
 SoundFile explosion;
 SoundFile klick;
 SoundFile background_play;
 */
PFont Arial_Black;

PImage Rackete;
PImage Coin;
PImage Hintergrund;
PImage Komet;
PImage Magnet_blau;
PImage Blau_Ring;
PImage Rot_Ring;
PImage Schuss;
PImage Schatten_komet;
PImage Anzeige;
PImage Anzeige_1;
PImage Anzeige_2;
PImage Anzeige_3;
PImage Anzeige_4;
PImage Explode;
PImage Komet_Icon;
PImage Missel_Icon;
PImage Bubble_Icon;
PImage Coin_Icon;
PImage Magnet_Icon;
PImage LvL;
PImage Menue;
PImage Titel;

float rackete_y;
float rackete_x;
float coin_y;
float coin_x;
float coingeschwindigkeit_x;
float magnet_blau_y;
float magnet_blau_x;
float magnet_blaugeschwindigkeit_x;
float schuss_y;
float schuss_x;
float schussgeschwindigkeit_x;
float komet_y;
float komet_x;
float kometengeschwindigkeit_x;
float size_komet;
float komet_2_y;
float komet_2_x;
float kometengeschwindigkeit_2_x;
float size_komet_2;
float komet_3_y;
float komet_3_x;
float kometengeschwindigkeit_3_x;
float size_komet_3;
float komet_4_y;
float komet_4_x;
float kometengeschwindigkeit_4_x;
float size_komet_4;
float komet_5_y;
float komet_5_x;
float kometengeschwindigkeit_5_x;
float size_komet_5;
float komet_6_y;
float komet_6_x;
float kometengeschwindigkeit_6_x;
float size_komet_6;
float explode_y;
float explode_x;
float explode_2_y;
float explode_2_x;
float explode_3_y;
float explode_3_x;
float explode_4_y;
float explode_4_x;
float explode_5_y;
float explode_5_x;
float explode_6_y;
float explode_6_x;
float Effekt;
float rotate;
float[] Button_start = new float[5];
float[] Button_beenden = new float[5];
float[] Button_neustart = new float[5];


int counter;
int counter_komet;
int counter_schild;
int counter_schuss;
int counter_anziehen;
int Punkte;
int Leben;
int reichweite;
int reichweite_komet;
int schild;
int schuss;
int schuss_treffer;
int anziehen;
int explode_komet;
int explode_komet_2;
int explode_komet_3;
int explode_komet_4;
int explode_komet_5;
int explode_komet_6;
int level;
int level_plus;
int punkte_max;
int start;
int neustart;

String Punkte_s;

public void setup() {
  /*background = new SoundFile(this, "sample.mp3");
   point = new SoundFile(this, "sample.mp3");
   explosion = new SoundFile(this, "sample.mp3");
   klick = new SoundFile(this, "sample.mp3");
   background_play = new SoundFile(this, "sample.mp3");*/



  Hintergrund = loadImage("Sterne.png");
  Rackete = loadImage("Rackete 3.png");
  Coin = loadImage("Coin.png");
  Magnet_blau = loadImage("Fragezeichen.png");
  Komet = loadImage("Komet.png");
  Blau_Ring = loadImage("Blauer Ring.png");
  Rot_Ring = loadImage("Roter Ring.png");
  Schuss = loadImage("Missel.png");
  Schatten_komet = loadImage("Komet schatten.png");
  Anzeige = loadImage("Anzeige 3.png");
  Anzeige_1 = loadImage("Anzeige 3 25.png");
  Anzeige_2 = loadImage("Anzeige 3 50.png");
  Anzeige_3 = loadImage("Anzeige 3 75.png");
  Anzeige_4 = loadImage("Anzeige 3 100.png");
  Explode = loadImage("Explosion.png");
  Komet_Icon = loadImage("Komet Icon.png");
  Missel_Icon = loadImage("Missel Icon.png");
  Bubble_Icon = loadImage("Schild.png");
  Coin_Icon = loadImage("Coin Icon.png");
  Magnet_Icon = loadImage("Magnet.png");
  LvL = loadImage("Anzeige 3 2.png");
  Menue = loadImage("Men\u00fc.png");
  Titel = loadImage("Titel.png");

  Arial_Black = createFont("arial-black.ttf", 32);

  
  rackete_y = 300;
  rackete_x = 150;
  coin_y = 300;
  coin_x = 700;
  coingeschwindigkeit_x = 4;
  magnet_blau_y = 400;
  magnet_blau_x = 4000;
  magnet_blaugeschwindigkeit_x = 4;
  schuss_y = rackete_y;
  schuss_x = rackete_x;
  schussgeschwindigkeit_x = 0;
  komet_y = random(30, height-30);
  komet_x = width+50;
  kometengeschwindigkeit_x = 4; 
  size_komet = 130;
  komet_2_y = random(30, height-30);
  komet_2_x = width+150;
  kometengeschwindigkeit_2_x = 4; 
  size_komet_2 = 130;
  komet_3_y = random(30, height-30);
  komet_3_x = width+250;
  kometengeschwindigkeit_3_x = 4; 
  size_komet_3 = 130;
  komet_4_y = random(30, height-30);
  komet_4_x = width+350;
  kometengeschwindigkeit_4_x = 4; 
  size_komet_4 = 130;
  komet_5_y = random(30, height-30);
  komet_5_x = width+450;
  kometengeschwindigkeit_5_x = 4; 
  size_komet_5 = 130;
  komet_6_y = random(30, height-30);
  komet_6_x = width+550;
  kometengeschwindigkeit_6_x = 4; 
  size_komet_6 = 130;
  Leben = 3;
  reichweite = 55;
  reichweite_komet = 55;
  schuss = 0;
  schuss_treffer = 1;
  anziehen = 0;
  schild = 0;
  counter = 1000;
  counter_komet = 1000;
  counter_schild = 1000;
  counter_schuss = 1000;
  counter_anziehen = 1000;
  level = 1;
  level_plus = 20;
  punkte_max = 30;
  Punkte = 0;
  Button_start[0]= width/2;
  Button_start[1]= height/2;
  Button_start[2]= height/2.2105263157894737f;
  Button_start[3]= height/6.5625f;
  Button_beenden[0]= width/2;
  Button_beenden[1]= height/2+height/6.5625f;
  Button_beenden[2]= height/1.010587103f-height/1.62037037f;
  Button_beenden[3]= height/1.424694708f-height/1.674641148f;
  Button_neustart[0]= width/2;
  Button_neustart[1]= height/2+height/3.75f;
  Button_neustart[2]= height/3.28125f;
  Button_neustart[3]= height/11.6666666666666667f;
  imageMode(CENTER);
  rectMode(CENTER);
}

public void draw() {
  textFont(Arial_Black);
  image(Hintergrund, 400, 300, 800, 600);
  image(Hintergrund, 400, 900, 800, 600);
  image(Hintergrund, 1200, 300, 800, 600);
  image(Hintergrund, 1200, 900, 800, 600);
  image(Hintergrund, 2000, 300, 800, 600);
  image(Hintergrund, 2000, 900, 800, 600);
  image(Hintergrund, 1200, 900, 800, 600);
  image(Hintergrund, 1200, 1500, 800, 600);
  image(Hintergrund, 2000, 1500, 800, 600);

  if (start == 0) {
    rectMode(CENTER);
    //image(Menue, width/2, height/1.7066666666666667, height/1.68698517298, height/2.02371541502);

    fill(0xffFFFFFF);
    stroke(0xffCBCBCB);
    rect(width/2, height/2+height/11.6666666666666667f, height/1.68698517298f, height/2.02371541502f, 100);
    fill(0xff0FF25C);
    stroke(0xff00B93C);
    rect(Button_start[0], Button_start[1], Button_start[2], Button_start[3], 100);
    fill(0xffFA0000);
    stroke(0xffA20000);
    rect(Button_beenden[0], Button_beenden[1], Button_beenden[2], Button_beenden[3], 200);
    fill(0xffC8E802);
    stroke(0xffB2CE00);
    rect(Button_neustart[0], Button_neustart[1], Button_neustart[2], Button_neustart[3], 200);
    image(Titel, width/2, height/6.8266666666666667f, height/1.28f, height/2.56f);

    fill(0xff000000);
    textSize(height/10.24f);
    text("Start", (width/2) - width/11.2f, height/1.8618181818181818f);
    textSize(height/17.0666666667f);
    text("Beenden", (width/2) - width/11.7482517482517483f, height/1.48405797101f);
    textSize(height/20.48f);
    text("Neustart", width/2 - width/14.608695652173913f, height/2+height/3.50f);

    String[] Punkte_s_a = new String[15];
    Punkte_s_a[0] = str(Punkte);
    Punkte_s_a[1] = str(level);
    Punkte_s_a[2] = str(punkte_max);
    Punkte_s_a[3] = str(level_plus);
    Punkte_s_a[4] = str(Leben);
    Punkte_s_a[5] = str(reichweite);
    Punkte_s_a[6] = str(reichweite_komet);
    Punkte_s_a[7] = str(schild);
    Punkte_s_a[8] = str(anziehen);
    Punkte_s_a[9] = str(schuss);
    Punkte_s_a[10] = str(counter);
    Punkte_s_a[11] = str(counter_komet);
    Punkte_s_a[12] = str(counter_schild);
    Punkte_s_a[13] = str(counter_schuss);
    Punkte_s_a[14] = str(counter_anziehen);

    if (mouseY < Button_start[1]+Button_start[3]/2 && mouseY > Button_start[1]-Button_start[3]/2 && mouseX < Button_start[0]+Button_start[2]/2 && mouseX > Button_start[0]-Button_start[2]/2) {
      if (mousePressed) {
        Punkte_s_a = loadStrings("Save.txt");
        if (neustart == 0) {
         /* Punkte = Integer.parseInt(Punkte_s_a[0]);
          level = Integer.parseInt(Punkte_s_a[1]);
          punkte_max = Integer.parseInt(Punkte_s_a[2]);
          level_plus = Integer.parseInt(Punkte_s_a[3]);
          Leben = Integer.parseInt(Punkte_s_a[4]);
          reichweite = Integer.parseInt(Punkte_s_a[5]);
          reichweite_komet = Integer.parseInt(Punkte_s_a[6]);
          schild = Integer.parseInt(Punkte_s_a[7]);
          anziehen = Integer.parseInt(Punkte_s_a[8]);
          schuss = Integer.parseInt(Punkte_s_a[9]);
          counter = Integer.parseInt(Punkte_s_a[10]);
          counter_komet = Integer.parseInt(Punkte_s_a[11]);
          counter_schild = Integer.parseInt(Punkte_s_a[12]);
          counter_schuss = Integer.parseInt(Punkte_s_a[13]);
          counter_anziehen = Integer.parseInt(Punkte_s_a[14]);*/
        }

        start = 1;
      }
    }
    if (mouseY < Button_beenden[1]+Button_beenden[3]/2 && mouseY > Button_beenden[1]-Button_beenden[3]/2 && mouseX < Button_beenden[0]+Button_beenden[2]/2 && mouseX > Button_beenden[0]-Button_beenden[2]/2) {
      if (mousePressed) {
        saveStrings("Save.txt", Punkte_s_a);
        exit();
      }
    }
    if (mouseY < Button_neustart[1]+Button_neustart[3]/2 && mouseY > Button_neustart[1]-Button_neustart[3]/2 && mouseX < Button_neustart[0]+Button_neustart[2]/2 && mouseX > Button_neustart[0]-Button_neustart[2]/2) {
      if (mousePressed) {
        fullScreen();
        rackete_y = 300;
        rackete_x = 150;
        coin_y = 300;
        coin_x = 700;
        coingeschwindigkeit_x = 4;
        magnet_blau_y = 400;
        magnet_blau_x = 3500;
        magnet_blaugeschwindigkeit_x = 4;
        schuss_y = rackete_y;
        schuss_x = rackete_x;
        schussgeschwindigkeit_x = 0;
        komet_y = random(30, height-30);
        komet_x = width+50;
        kometengeschwindigkeit_x = 4; 
        size_komet = 130;
        komet_2_y = random(30, height-30);
        komet_2_x = width+150;
        kometengeschwindigkeit_2_x = 4; 
        size_komet_2 = 130;
        komet_3_y = random(30, height-30);
        komet_3_x = width+250;
        kometengeschwindigkeit_3_x = 4; 
        size_komet_3 = 130;
        komet_4_y = random(30, height-30);
        komet_4_x = width+350;
        kometengeschwindigkeit_4_x = 4; 
        size_komet_4 = 130;
        komet_5_y = random(30, height-30);
        komet_5_x = width+450;
        kometengeschwindigkeit_5_x = 4; 
        size_komet_5 = 130;
        komet_6_y = random(30, height-30);
        komet_6_x = width+550;
        kometengeschwindigkeit_6_x = 4; 
        size_komet_6 = 130;
        Leben = 3;
        reichweite = 55;
        reichweite_komet = 55;
        schuss = 0;
        schuss_treffer = 1;
        anziehen = 0;
        schild = 0;
        counter = 1000;
        counter_komet = 1000;
        counter_schild = 1000;
        counter_schuss = 1000;
        counter_anziehen = 1000;
        level = 1;
        level_plus = 20;
        punkte_max = 30;
        Punkte = 0;
        imageMode(CENTER);
        neustart = 1;
      }
    }
  }



  if (start == 1) {
    pushMatrix(); 
    translate(komet_x, komet_y);
    rotate(rotate + 1 + (kometengeschwindigkeit_x / 100));
    image(Komet, 0, 0, size_komet, size_komet);
    popMatrix(); 
    image(Schatten_komet, komet_x, komet_y, size_komet, size_komet);
    pushMatrix(); 
    translate(komet_2_x, komet_2_y);
    rotate(rotate + 2 + (kometengeschwindigkeit_2_x / 100));
    image(Komet, 0, 0, size_komet_2, size_komet_2);
    popMatrix(); 
    image(Schatten_komet, komet_2_x, komet_2_y, size_komet_2, size_komet_2);
    pushMatrix(); 
    translate(komet_3_x, komet_3_y);
    rotate(rotate + 3 + (kometengeschwindigkeit_3_x / 100));
    image(Komet, 0, 0, size_komet_3, size_komet_3);
    popMatrix(); 
    image(Schatten_komet, komet_3_x, komet_3_y, size_komet_3, size_komet_3);
    pushMatrix(); 
    translate(komet_4_x, komet_4_y);
    rotate(rotate + 4 + (kometengeschwindigkeit_4_x / 100));
    image(Komet, 0, 0, size_komet_4, size_komet_4);
    popMatrix(); 
    image(Schatten_komet, komet_4_x, komet_4_y, size_komet_4, size_komet_4);
    pushMatrix(); 
    translate(komet_5_x, komet_5_y);
    rotate(rotate + 5 + (kometengeschwindigkeit_5_x / 100));
    image(Komet, 0, 0, size_komet_5, size_komet_5);
    popMatrix(); 
    image(Schatten_komet, komet_5_x, komet_5_y, size_komet_5, size_komet_5);
    pushMatrix(); 
    translate(komet_6_x, komet_6_y);
    rotate(rotate + 6 + (kometengeschwindigkeit_6_x / 100));
    image(Komet, 0, 0, size_komet_6, size_komet_6);
    popMatrix(); 
    image(Schatten_komet, komet_6_x, komet_6_y, size_komet_6, size_komet_6);
    rotate(0);
    rotate = rotate + 0.01f ;//((kometengeschwindigkeit_x + kometengeschwindigkeit_2_x + kometengeschwindigkeit_3_x + kometengeschwindigkeit_4_x + kometengeschwindigkeit_5_x + kometengeschwindigkeit_6_x) / 6 / 100);

    if (explode_komet >= 1) {
      if (explode_komet == 1 || explode_komet == 2) {
        image(Explode, explode_x, explode_y, size_komet/3, size_komet/3);
        explode_komet = explode_komet +1;
      }
      if (explode_komet == 3 || explode_komet == 4) {
        image(Explode, explode_x, explode_y, size_komet/2, size_komet/2);
        explode_komet = explode_komet +1;
      }
      if (explode_komet == 5 || explode_komet == 6) {
        image(Explode, explode_x, explode_y, size_komet, size_komet);
        explode_komet = explode_komet +1;
      }
      if (explode_komet == 7 || explode_komet == 8) {
        image(Explode, explode_x, explode_y, size_komet/2, size_komet/2);
        explode_komet = explode_komet +1;
      }
      if (explode_komet == 9 || explode_komet == 10) {
        image(Explode, explode_x, explode_y, size_komet/3, size_komet/3);
        explode_komet = explode_komet +1;
      }
      if (explode_komet == 11 || explode_komet == 12) {
        image(Explode, explode_x, explode_y, size_komet/4, size_komet/4);
        explode_komet = 0;
      }
    }
    if (explode_komet_2 >= 1) {
      if (explode_komet_2 == 1 || explode_komet_2 == 2) {
        image(Explode, explode_2_x, explode_2_y, size_komet_2/3, size_komet_2/3);
        explode_komet_2 = explode_komet_2 +1;
      }
      if (explode_komet_2 == 3 || explode_komet_2 == 4) {
        image(Explode, explode_2_x, explode_2_y, size_komet_2/2, size_komet_2/2);
        explode_komet_2 = explode_komet_2 +1;
      }
      if (explode_komet_2 == 5 || explode_komet_2 == 6) {
        image(Explode, explode_2_x, explode_2_y, size_komet_2, size_komet_2);
        explode_komet_2 = explode_komet_2 +1;
      }
      if (explode_komet_2 == 7 || explode_komet_2 == 8) {
        image(Explode, explode_2_x, explode_2_y, size_komet_2/2, size_komet_2/2);
        explode_komet_2 = explode_komet_2 +1;
      }
      if (explode_komet_2 == 9 || explode_komet_2 == 10) {
        image(Explode, explode_2_x, explode_2_y, size_komet_2/3, size_komet_2/3);
        explode_komet_2 = explode_komet_2 +1;
      }
      if (explode_komet_2 == 11 || explode_komet_2 == 12) {
        image(Explode, explode_2_x, explode_2_y, size_komet_2/4, size_komet_2/4);
        explode_komet_2 = 0;
      }
    }
    if (explode_komet_3 >= 1) {
      if (explode_komet_3 == 1 || explode_komet_3 == 2) {
        image(Explode, explode_3_x, explode_3_y, size_komet_3/3, size_komet_3/3);
        explode_komet_3 = explode_komet_3 +1;
      }
      if (explode_komet_3 == 3 || explode_komet_3 == 4) {
        image(Explode, explode_3_x, explode_3_y, size_komet_3/2, size_komet_3/2);
        explode_komet_3 = explode_komet_3 +1;
      }
      if (explode_komet_3 == 5 || explode_komet_3 == 6) {
        image(Explode, explode_3_x, explode_3_y, size_komet_3, size_komet_3);
        explode_komet_3 = explode_komet_3 +1;
      }
      if (explode_komet_3 == 7 || explode_komet_3 == 8) {
        image(Explode, explode_3_x, explode_3_y, size_komet_3/2, size_komet_3/2);
        explode_komet_3 = explode_komet_3 +1;
      }
      if (explode_komet_3 == 9 || explode_komet_3 == 10) {
        image(Explode, explode_3_x, explode_3_y, size_komet_3/3, size_komet_3/3);
        explode_komet_3 = explode_komet_3 +1;
      }
      if (explode_komet_3 == 11 || explode_komet_3 == 12) {
        image(Explode, explode_3_x, explode_3_y, size_komet_3/4, size_komet_3/4);
        explode_komet_3 = 0;
      }
    }
    if (explode_komet_4 >= 1) {
      if (explode_komet_4 == 1 || explode_komet_4 == 2) {
        image(Explode, explode_4_x, explode_4_y, size_komet_4/3, size_komet_4/3);
        explode_komet_4 = explode_komet_4 +1;
      }
      if (explode_komet_4 == 3 || explode_komet_4 == 4) {
        image(Explode, explode_4_x, explode_4_y, size_komet_4/2, size_komet_4/2);
        explode_komet_4 = explode_komet_4 +1;
      }
      if (explode_komet_4 == 5 || explode_komet_4 == 6) {
        image(Explode, explode_4_x, explode_4_y, size_komet_4, size_komet_4);
        explode_komet_4 = explode_komet_4 +1;
      }
      if (explode_komet_4 == 7 || explode_komet_4 == 8) {
        image(Explode, explode_4_x, explode_4_y, size_komet_4/2, size_komet_4/2);
        explode_komet_4 = explode_komet_4 +1;
      }
      if (explode_komet_4 == 9 || explode_komet_4 == 10) {
        image(Explode, explode_4_x, explode_4_y, size_komet_4/3, size_komet_4/3);
        explode_komet_4 = explode_komet_4 +1;
      }
      if (explode_komet_4 == 11 || explode_komet_4 == 12) {
        image(Explode, explode_4_x, explode_4_y, size_komet_4/4, size_komet_4/4);
        explode_komet_4 = 0;
      }
    }
    if (explode_komet_5 >= 1) {
      if (explode_komet_5 == 1 || explode_komet_5 == 2) {
        image(Explode, explode_5_x, explode_5_y, size_komet_5/3, size_komet_5/3);
        explode_komet_5 = explode_komet_5 +1;
      }
      if (explode_komet_5 == 3 || explode_komet_5 == 4) {
        image(Explode, explode_5_x, explode_5_y, size_komet_5/2, size_komet_5/2);
        explode_komet_5 = explode_komet_5 +1;
      }
      if (explode_komet_5 == 5 || explode_komet_5 == 6) {
        image(Explode, explode_5_x, explode_5_y, size_komet_5, size_komet_5);
        explode_komet_5 = explode_komet_5 +1;
      }
      if (explode_komet_5 == 7 || explode_komet_5 == 8) {
        image(Explode, explode_5_x, explode_5_y, size_komet_5/2, size_komet_5/2);
        explode_komet_5 = explode_komet_5 +1;
      }
      if (explode_komet_5 == 9 || explode_komet_5 == 10) {
        image(Explode, explode_5_x, explode_5_y, size_komet_5/3, size_komet_5/3);
        explode_komet_5 = explode_komet_5 +1;
      }
      if (explode_komet_5 == 11 || explode_komet_5 == 12) {
        image(Explode, explode_5_x, explode_5_y, size_komet_5/4, size_komet_5/4);
        explode_komet_5 = 0;
      }
    }
    if (explode_komet_6 >= 1) {
      if (explode_komet_6 == 1 || explode_komet_6 == 2) {
        image(Explode, explode_6_x, explode_6_y, size_komet_6/3, size_komet_6/3);
        explode_komet_6 = explode_komet_6 +1;
      }
      if (explode_komet_6 == 3 || explode_komet_6 == 4) {
        image(Explode, explode_6_x, explode_6_y, size_komet_6/2, size_komet_6/2);
        explode_komet_6 = explode_komet_6 +1;
      }
      if (explode_komet_6 == 5 || explode_komet_6 == 6) {
        image(Explode, explode_6_x, explode_6_y, size_komet_6, size_komet_6);
        explode_komet_6 = explode_komet_6 +1;
      }
      if (explode_komet_6 == 7 || explode_komet_6 == 8) {
        image(Explode, explode_6_x, explode_6_y, size_komet_6/2, size_komet_6/2);
        explode_komet_6 = explode_komet_6 +1;
      }
      if (explode_komet_6 == 9 || explode_komet_6 == 10) {
        image(Explode, explode_6_x, explode_6_y, size_komet_6/3, size_komet_6/3);
        explode_komet_6 = explode_komet_6 +1;
      }
      if (explode_komet_6 == 11 || explode_komet_6 == 12) {
        image(Explode, explode_6_x, explode_6_y, size_komet_6/4, size_komet_6/4);
        explode_komet_6 = 0;
      }
    }

    if (schuss == 0) {
      schuss_y = rackete_y;
      schuss_x = rackete_x;
      schuss_treffer = 1;
    } else {
      if (schuss_treffer == 1) {
        if (schuss == 1) {
          if (mousePressed) {
            schussgeschwindigkeit_x = 40;
            schuss_treffer = 0;
          }
        }
      }
    }
    if (schuss_treffer == 1) {
      schuss_y = rackete_y;
      schuss_x = rackete_x;
    }

    image(Coin, coin_x, coin_y, 75, 75);
    image(Magnet_blau, magnet_blau_x, magnet_blau_y, 75, 75);
    image(Schuss, schuss_x, schuss_y, 80, 80);
    if (reichweite == 155) {
      image(Blau_Ring, rackete_x, rackete_y, 330, 330);
      image(Rot_Ring, rackete_x, rackete_y, 130, 130);
    } else {
      image(Blau_Ring, rackete_x, rackete_y, 130, 130);
    }
    if (reichweite_komet == 100) {
      image(Rot_Ring, rackete_x, rackete_y, 220, 220);
      image(Blau_Ring, rackete_x, rackete_y, 130, 130);
    }
    image(Rackete, rackete_x, rackete_y, 100, 100);

    if (reichweite == 155 || reichweite_komet == 100 || schild == 1 || schuss == 1 || anziehen == 1) {
      if (counter >= 751 && reichweite == 155 || counter_komet >= 751 && reichweite_komet == 100 || counter_schild >= 751 && schild == 1 || counter_schuss >= 751 && schuss == 1 || counter_anziehen >= 751 && anziehen == 1) {
        image(Anzeige_4, 100, 100, 200, 200);
      }
      if (counter >= 501 && reichweite == 155 || counter_komet >= 501 && reichweite_komet == 100|| counter_schild >= 501 && schild == 1 || counter_schuss >= 501 && schuss == 1 || counter_anziehen >= 501 && anziehen == 1) {
        image(Anzeige_3, 100, 100, 200, 200);
      }
      if (counter >= 251 && reichweite == 155 || counter_komet >= 251 && reichweite_komet == 100|| counter_schild >= 251 && schild == 1 || counter_schuss >= 251 && schuss == 1 || counter_anziehen >= 251 && anziehen == 1) {
        image(Anzeige_2, 100, 100, 200, 200);
      }
      if (counter >= 0 && reichweite == 155 || counter_komet >= 0 && reichweite_komet == 100|| counter_schild >= 0 && schild == 1 || counter_schuss >= 0 && schuss == 1 || counter_anziehen >= 0) {
        image(Anzeige_1, 100, 100, 200, 200);
      }
    }
    image(Anzeige, 100, 100, 200, 200);

    rectMode(CORNER);
    stroke(0xffff0000);
    fill(0xffff0000);
    rect(width/2-330, height/2+height/2.625f-45, ((667.5f / punkte_max) * Punkte), 45);

    if (Leben <= 3) {
      if (Leben == 1) {
        rect(width/2-285, height/2+height/2.625f+17+10, 189.75f, 45);
      }
      if (Leben == 2) {
        rect(width/2-285, height/2+height/2.625f+17+10, 390, 45);
      }
      if (Leben == 3) {
        rect(width/2-285, height/2+height/2.625f+17+10, 570, 45);
      }
    } else {
      rect(width/2-285, height/2+height/2.625f+17+10, 570, 45);
    }

    stroke(0xffffaa08);
    fill(0xffffaa08);
    if (Leben <= 3) {
      rect(width/2-105, height/2+height/2.625f+17+10, 10, 45);
      rect(width/2+105, height/2+height/2.625f+17+10, 10, 45);
    } else {
      rect(width/2, height/2+height/2.625f+17+10, 10, 45);
      rect(width/2-142.5f, height/2+height/2.625f+17+10, 10, 45);
      rect(width/2+142.5f, height/2+height/2.625f+17+10, 10, 45);
    }
    image(LvL, width/2, height/2+height/2.625f+10, 750, 150);

    rackete_y = mouseY;
    rackete_x = mouseX;

    if (coin_x < rackete_x) {
      coingeschwindigkeit_x = coingeschwindigkeit_x + 6;
    }
    if (magnet_blau_x < rackete_x) {
      magnet_blaugeschwindigkeit_x = magnet_blaugeschwindigkeit_x + 6;
    }
    coin_x = coin_x - coingeschwindigkeit_x;
    magnet_blau_x = magnet_blau_x - magnet_blaugeschwindigkeit_x;
    schuss_x = schuss_x + schussgeschwindigkeit_x;
    komet_x = komet_x - kometengeschwindigkeit_x;
    komet_2_x = komet_2_x - kometengeschwindigkeit_2_x;
    komet_3_x = komet_3_x - kometengeschwindigkeit_3_x;
    komet_4_x = komet_4_x - kometengeschwindigkeit_4_x;
    komet_5_x = komet_5_x - kometengeschwindigkeit_4_x;
    komet_6_x = komet_6_x - kometengeschwindigkeit_4_x;

    if (coin_x < 10) {
      coin_x = width+50;
      coin_y = random(30, height-30);
      coingeschwindigkeit_x = 4;
    }
    if (magnet_blau_x < 10) {
      magnet_blau_x = 3500;
      magnet_blau_y = random(30, height-30);
      magnet_blaugeschwindigkeit_x = 4;
    }
    if (schuss_x > 1300) {
      schuss_treffer = 1;
    }
    if (komet_x < 10) {
      komet_x = width+50;
      komet_y = random(30, height-30);
      size_komet = random(height/7, 60);
    }
    if (komet_2_x < 10) {
      komet_2_x = width+50;
      komet_2_y = random(30, height-30);
      size_komet_2 = random(height/7, 60);
    }
    if (komet_3_x < 10) {
      komet_3_x = width+50;
      komet_3_y = random(30, height-30);
      size_komet_3 = random(height/7, 60);
    }
    if (komet_4_x < 10) {
      komet_4_x = width+50;
      komet_4_y = random(30, height-30);
      size_komet_4 = random(height/7, 60);
    }
    if (komet_5_x < 10) {
      komet_5_x = width+50;
      komet_5_y = random(30, height-30);
      size_komet_5 = random(height/7, 60);
    }
    if (komet_6_x < 10) {
      komet_6_x = width+50;
      komet_6_y = random(30, height-30);
      size_komet_6 = random(height/7, 60);
    }

    if (coin_y < (rackete_y + reichweite + 37) && coin_y > (rackete_y - reichweite - 37) && coin_x < (rackete_x + reichweite + 37) && coin_x > (rackete_x - reichweite - 37)) {
      Punkte = Punkte + 2;
      coin_x = width+50;
      coin_y = random(30, height-30);
      coingeschwindigkeit_x = coingeschwindigkeit_x +0.25f;
      kometengeschwindigkeit_x = kometengeschwindigkeit_x +0.25f;
      kometengeschwindigkeit_2_x = kometengeschwindigkeit_2_x +0.25f;
      kometengeschwindigkeit_3_x = kometengeschwindigkeit_3_x +0.25f;
      kometengeschwindigkeit_4_x = kometengeschwindigkeit_4_x +0.25f;
      kometengeschwindigkeit_5_x = kometengeschwindigkeit_5_x +0.25f;
      kometengeschwindigkeit_6_x = kometengeschwindigkeit_6_x +0.25f;
    }

    if (magnet_blau_y < (rackete_y + 55 + 37) && magnet_blau_y > (rackete_y - 55 - 37) && magnet_blau_x < (rackete_x + 55 + 37) && magnet_blau_x > (rackete_x - 55 - 37)) {
      Punkte = Punkte + 5;
      magnet_blau_x = 7000;
      magnet_blau_y = random(30, height-30);
      magnet_blaugeschwindigkeit_x = 4;
      Effekt = random(0.000000000000000000000000000000000000000000001f, 0.000000000000000000000000000000000000000000009f);
      Leben = 3;


      if (Effekt == 0.000000000000000000000000000000000000000000001f) {
        if (reichweite == 155) {
          counter =  1000;
        } else {
          reichweite = reichweite + 100;
        }
      }
      if (Effekt == 0.000000000000000000000000000000000000000000002f) {
        if (Leben >= 3) {
          Leben = Leben + 1;
        }
      } else {
        Leben = 3;
      }
      if (Effekt == 0.000000000000000000000000000000000000000000003f) {
        if (schild == 1) {
          counter_schild = 1000;
        } else {
          schild = 1;
        }
      }
      if (Effekt == 0.000000000000000000000000000000000000000000004f) {
        if (schuss == 1) {
          counter_schuss = 1000;
        } else {
          schuss = 1;
        }
      }
      if (Effekt == 0.000000000000000000000000000000000000000000009f) {
        if (anziehen == 1) {
          counter_anziehen = 1000;
        } else {
          anziehen = 1;
        }
      }
      if (Effekt == 0.000000000000000000000000000000000000000000006f) {
        if (reichweite_komet == 100) {
          counter_komet = 1000;
        } else {
          reichweite_komet = reichweite_komet + 45;
        }
      }
      if (Effekt == 0.000000000000000000000000000000000000000000007f) {
        Leben = 1;
      }
      if (Effekt == 0.000000000000000000000000000000000000000000008f) {
        Punkte = Punkte / 2;
      }

      coingeschwindigkeit_x = coingeschwindigkeit_x +1;
      magnet_blaugeschwindigkeit_x = magnet_blaugeschwindigkeit_x +1;
      kometengeschwindigkeit_x = kometengeschwindigkeit_x +1;
      kometengeschwindigkeit_2_x = kometengeschwindigkeit_2_x +1;
      kometengeschwindigkeit_3_x = kometengeschwindigkeit_3_x +1;
      kometengeschwindigkeit_4_x = kometengeschwindigkeit_4_x +1;
      kometengeschwindigkeit_5_x = kometengeschwindigkeit_5_x +1;
      kometengeschwindigkeit_6_x = kometengeschwindigkeit_6_x +1;
    }

    size_komet = size_komet / 2;
    size_komet_2 = size_komet_2 / 2;
    size_komet_3 = size_komet_3 / 2;
    size_komet_4 = size_komet_4 / 2;
    size_komet_5 = size_komet_5 / 2;
    size_komet_6 = size_komet_6 / 2;

    if (schuss == 1) {
      if (schuss_y < (komet_y + 30 + size_komet) && schuss_y > (komet_y - 30 - size_komet) && schuss_x < (komet_x + 30 - size_komet) && schuss_x > (komet_x - 30 - size_komet)) {
        explode_komet = 1;
        explode_y = komet_y;
        explode_x = komet_x;
        komet_x = width+50;
        komet_y = random(30, height-30);
        kometengeschwindigkeit_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet = random(height/7, 60);
        size_komet = size_komet / 2;
      }
      if (schuss_y < (komet_2_y + 30 + size_komet) && schuss_y > (komet_2_y - 30 - size_komet) && schuss_x < (komet_2_x + 30 + size_komet_2) && schuss_x > (komet_2_x - 30 - size_komet_2)) {
        explode_komet_2 = 1;
        explode_2_y = komet_2_y;
        explode_2_x = komet_2_x;
        komet_2_x = width+50;
        komet_2_y = random(30, height-30);
        kometengeschwindigkeit_2_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet_2 = random(height/7, 60);
        size_komet_2 = size_komet_2 / 2;
      }
      if (schuss_y < (komet_3_y + 30 + size_komet_3) && schuss_y > (komet_3_y - 30 - size_komet_3) && schuss_x < (komet_3_x + 30 + size_komet_3) && schuss_x > (komet_3_x - 30 - size_komet_3)) {
        explode_komet_3 = 1;
        explode_3_y = komet_3_y;
        explode_3_x = komet_3_x;
        komet_3_x = width+50;
        komet_3_y = random(30, height-30);
        kometengeschwindigkeit_3_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet_3 = random(height/7, 60);
        size_komet_3 = size_komet_3 / 2;
      }
      if (schuss_y < (komet_4_y + 30 + size_komet_4) && schuss_y > (komet_4_y - 30 - size_komet_4) && schuss_x < (komet_4_x + 30 + size_komet_4) && schuss_x > (komet_4_x - 30 - size_komet_4)) {
        explode_komet_4 = 1;
        explode_4_y = komet_4_y;
        explode_4_x = komet_4_x;
        komet_4_x = width+50;
        komet_4_y = random(30, height-30);
        kometengeschwindigkeit_4_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet_4 = random(height/7, 60);
        size_komet_4 = size_komet_4 / 2;
      }
      if (schuss_y < (komet_5_y + 30 + size_komet_5) && schuss_y > (komet_5_y - 30 - size_komet_5) && schuss_x < (komet_5_x + 30 + size_komet_5) && schuss_x > (komet_5_x - 30 - size_komet_5)) {
        explode_komet_5 = 1;
        explode_5_y = komet_5_y;
        explode_5_x = komet_5_x;
        komet_5_x = width+50;
        komet_5_y = random(30, height-30);
        kometengeschwindigkeit_5_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet_5 = random(height/7, 60);
        size_komet_5 = size_komet_5 / 2;
      }
      if (schuss_y < (komet_6_y + 30 + size_komet_6) && schuss_y > (komet_6_y - 30 - size_komet_6) && schuss_x < (komet_6_x + 30 + size_komet_6) && schuss_x > (komet_6_x - 30 - size_komet_6)) {
        explode_komet_6 = 1;
        explode_6_y = komet_6_y;
        explode_6_x = komet_6_x;
        komet_6_x = width+50;
        komet_6_y = random(30, height-30);
        kometengeschwindigkeit_6_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet_6 = random(height/7, 60);
        size_komet_6 = size_komet_6 / 2;
      }
    }

    if (schild == 0) {
      if (komet_y < (rackete_y + reichweite_komet + size_komet) && komet_y > (rackete_y - reichweite_komet - size_komet) && komet_x < (rackete_x + reichweite_komet + size_komet) && komet_x > (rackete_x - reichweite_komet - size_komet)) {
        explode_komet = 1;
        explode_y = komet_y;
        explode_x = komet_x;
        komet_x = width+50;
        komet_y = random(30, height-30);
        kometengeschwindigkeit_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet = random(height/7, 60);
        size_komet = size_komet / 2;
      }
      if (komet_2_y < (rackete_y + reichweite_komet + size_komet_2) && komet_2_y > (rackete_y - reichweite_komet - size_komet_2) && komet_2_x < (rackete_x + reichweite_komet + size_komet_2) && komet_2_x > (rackete_x - reichweite_komet - size_komet_2)) {
        explode_komet_2 = 1;
        explode_2_y = komet_2_y;
        explode_2_x = komet_2_x;
        komet_2_x = width+50;
        komet_2_y = random(30, height-30);
        kometengeschwindigkeit_2_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet_2 = random(height/7, 60);
        size_komet_2 = size_komet_2 / 2;
      }
      if (komet_3_y < (rackete_y + reichweite_komet + size_komet_3) && komet_3_y > (rackete_y - reichweite_komet - size_komet_3) && komet_3_x < (rackete_x + reichweite_komet + size_komet_3) && komet_3_x > (rackete_x - reichweite_komet - size_komet_3)) {
        explode_komet_3 = 1;
        explode_3_y = komet_3_y;
        explode_3_x = komet_3_x;
        komet_3_x = width+50;
        komet_3_y = random(30, height-30);
        kometengeschwindigkeit_3_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet_3 = random(height/7, 60);
        size_komet_3 = size_komet_3 / 2;
      }
      if (komet_4_y < (rackete_y + reichweite_komet + size_komet_4) && komet_4_y > (rackete_y - reichweite_komet - size_komet_4) && komet_4_x < (rackete_x + reichweite_komet + size_komet_4) && komet_4_x > (rackete_x - reichweite_komet - size_komet_4)) {
        explode_komet_4 = 1;
        explode_4_y = komet_4_y;
        explode_4_x = komet_4_x;
        komet_4_x = width+50;
        komet_4_y = random(30, height-30);
        kometengeschwindigkeit_4_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet_4 = random(height/7, 60);
        size_komet_4 = size_komet_4 / 2;
      }
      if (komet_5_y < (rackete_y + reichweite_komet + size_komet_5) && komet_5_y > (rackete_y - reichweite_komet - size_komet_5) && komet_5_x < (rackete_x + reichweite_komet + size_komet_5) && komet_5_x > (rackete_x - reichweite_komet - size_komet_5)) {
        explode_komet_5 = 1;
        explode_5_y = komet_5_y;
        explode_5_x = komet_5_x;
        komet_5_x = width+50;
        komet_5_y = random(30, height-30);
        kometengeschwindigkeit_5_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet_5 = random(height/7, 60);
        size_komet_5 = size_komet_5 / 2;
      }
      if (komet_6_y < (rackete_y + reichweite_komet + size_komet_6) && komet_6_y > (rackete_y - reichweite_komet - size_komet_6) && komet_6_x < (rackete_x + reichweite_komet + size_komet_6) && komet_6_x > (rackete_x - reichweite_komet - size_komet_6)) {
        explode_komet_6 = 1;
        explode_6_y = komet_6_y;
        explode_6_x = komet_6_x;
        komet_6_x = width+50;
        komet_6_y = random(30, height-30);
        kometengeschwindigkeit_6_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet_6 = random(height/7, 60);
        size_komet_6 = size_komet_6 / 2;
      }
    }
    size_komet = size_komet * 2;
    size_komet_2 = size_komet_2 * 2;
    size_komet_3 = size_komet_3 * 2;
    size_komet_4 = size_komet_4 * 2;
    size_komet_5 = size_komet_5 * 2;
    size_komet_6 = size_komet_6 * 2;

    if (kometengeschwindigkeit_x > 7) {
      kometengeschwindigkeit_x = 5;
    }
    if (kometengeschwindigkeit_2_x > 7) {
      kometengeschwindigkeit_2_x = 5;
    }
    if (kometengeschwindigkeit_3_x > 7) {
      kometengeschwindigkeit_3_x = 5;
    }
    if (kometengeschwindigkeit_4_x > 7) {
      kometengeschwindigkeit_4_x = 5;
    }
    if (kometengeschwindigkeit_5_x > 7) {
      kometengeschwindigkeit_5_x = 5;
    }
    if (kometengeschwindigkeit_6_x > 7) {
      kometengeschwindigkeit_6_x = 5;
    }

    if (anziehen == 1) {
      if (coin_y < rackete_y) {
        for (coin_y = coin_y +1; coin_y == rackete_y; ) {
        }
      } else {
        for (coin_y = coin_y -1; coin_y == rackete_y; coin_y = 0) {
        }
      }
    }
    if (Punkte < 0) {
      Punkte = 0;
    }

    if (coingeschwindigkeit_x == 10) {
      coingeschwindigkeit_x = 4;
    }

    fill(0xffffffff);
    text("Level" + level, width/2-60, height/2+height/2.625f-10);
    //text("Leben:" + Leben, 650, 30);

    if (keyPressed) {
      start = 0;
    }

    if (reichweite > 55 && counter != 0) {
      counter = counter -1;
      image(Coin_Icon, 105, 100, 200, 200);
    }

    if (counter == 0) {
      counter = 1000;
      reichweite = 55;
    }
    if (reichweite > 55) {
      //text("Magnet: " + counter, 700, 50);
    }

    if (reichweite_komet > 55 && counter_komet != 0) {
      counter_komet = counter_komet -1;
      image(Komet_Icon, 105, 100, 200, 200);
    }

    if (counter_komet == 0) {
      counter_komet = 1000;
      reichweite_komet = 55;
    }
    if (reichweite_komet > 55) {
      //text("Komet R.: " + counter_komet, 700, 70);
    }

    if (schild == 1 && counter_schild != 0) {
      counter_schild = counter_schild -1;
      image(Bubble_Icon, 105, 100, 200, 200);
    }

    if (counter_schild == 0) {
      counter_schild = 1000;
      schild = 0;
    }
    if (schild == 1) {
      // text("Schild: " + counter_schild, 700, 90);
    }

    if (schuss == 1 && counter_schuss != 0) {
      counter_schuss = counter_schuss -1;
      image(Missel_Icon, 105, 100, 200, 200);
    }

    if (counter_schuss == 0) {
      counter_schuss = 1000;
      schuss = 0;
    }
    if (schuss == 1) {
      //text("Schuss: " + counter_schuss, 700, 110);
    }
    if (anziehen == 1 && counter_anziehen != 0) {
      counter_anziehen = counter_anziehen -1;
      image(Magnet_Icon, 105, 100, 200, 200);
    }

    if (counter_anziehen == 0) {
      counter_anziehen = 1000;
      anziehen = 0;
    }
    if (anziehen == 1) {
      // text("Anziehung: " + counter_anziehen, 700, 150);
    }

    if (Punkte >= punkte_max) {
      level ++;
      level_plus = level_plus + 10;
      punkte_max = punkte_max + level_plus;
      Punkte = 0;
    }

    if (Leben == 0) {
      fullScreen();
      rackete_y = 300;
      rackete_x = 150;
      coin_y = 300;
      coin_x = 700;
      coingeschwindigkeit_x = 4;
      magnet_blau_y = 400;
      magnet_blau_x = 4000;
      magnet_blaugeschwindigkeit_x = 4;
      schuss_y = rackete_y;
      schuss_x = rackete_x;
      schussgeschwindigkeit_x = 0;
      komet_y = 50;
      komet_x = 700;
      kometengeschwindigkeit_x = 4; 
      size_komet = 80;
      komet_y = random(30, height-30);
      komet_x = width+50;
      kometengeschwindigkeit_x = 4; 
      size_komet = 130;
      komet_2_y = random(30, height-30);
      komet_2_x = width+150;
      kometengeschwindigkeit_2_x = 4; 
      size_komet_2 = 130;
      komet_3_y = random(30, height-30);
      komet_3_x = width+250;
      kometengeschwindigkeit_3_x = 4; 
      size_komet_3 = 130;
      komet_4_y = random(30, height-30);
      komet_4_x = width+350;
      kometengeschwindigkeit_4_x = 4; 
      size_komet_4 = 130;
      komet_5_y = random(30, height-30);
      komet_5_x = width+450;
      kometengeschwindigkeit_5_x = 4; 
      size_komet_5 = 130;
      komet_6_y = random(30, height-30);
      komet_6_x = width+550;
      kometengeschwindigkeit_6_x = 4; 
      size_komet_6 = 130;
      Leben = 3;
      reichweite = 55;
      reichweite_komet = 55;
      schuss = 0;
      schuss_treffer = 1;
      anziehen = 0;
      counter = 1000;
      schild = 0;
      counter_komet = 1000;
      counter_schild = 1000;
      counter_schuss = 1000;
      Punkte = 0;
      imageMode(CENTER);
    }
  }
}

public void keyPressed() {
  if (key==27)
    key=0;
}
  public void settings() {  fullScreen(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "FlappyRocket_0_6" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
