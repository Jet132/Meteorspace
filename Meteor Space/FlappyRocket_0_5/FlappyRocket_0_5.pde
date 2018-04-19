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

String Punkte_s;

void setup() {
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
  Menue = loadImage("Menü.png");

  Arial_Black = createFont("arial-black.ttf", 32);

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
  komet_2_y = 50;
  komet_2_x = 600;
  kometengeschwindigkeit_2_x = 4; 
  size_komet_2 = 80;
  komet_3_y = 50;
  komet_3_x = 500;
  kometengeschwindigkeit_3_x = 4; 
  size_komet_3 = 80;
  komet_4_y = 50;
  komet_4_x = 400;
  kometengeschwindigkeit_4_x = 4; 
  size_komet_4 = 80;
  komet_5_y = 50;
  komet_5_x = 300;
  kometengeschwindigkeit_5_x = 4; 
  size_komet_5 = 80;
  komet_6_y = 50;
  komet_6_x = 200;
  kometengeschwindigkeit_6_x = 4; 
  size_komet_6 = 70;
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
}

void draw() {
  textFont(Arial_Black);
  image(Hintergrund, 400, 300, 800, 600);
  image(Hintergrund, 400, 900, 800, 600);
  image(Hintergrund, 1200, 300, 800, 600);
  image(Hintergrund, 1200, 900, 800, 600);

  if (start == 0) {
    fill(#000000);
    textSize(100);
    image(Menue, 600, 600, 640, 506);
    text("Start", 460, 550);
    textSize(60);
    text("Beenden", 460, 690);
    textSize(50);
    text("Neustart", 490, 790);

    String[] Punkte_s_a = new String[5];
    Punkte_s_a[0] = str(Punkte);
    Punkte_s_a[1] = str(level);
    Punkte_s_a[2] = str(punkte_max);
    Punkte_s_a[3] = str(level_plus);
    Punkte_s_a[4] = str(Leben);

    if (mouseX >= 360 && mouseX <= 835 && mouseY >= 430 && mouseY <= 588) {
      if (mousePressed) {
        Punkte_s_a = loadStrings("Save.txt");

        Punkte = parseInt(Punkte_s_a[0]);
        level = parseInt(Punkte_s_a[1]);
        punkte_max = parseInt(Punkte_s_a[2]);
        level_plus = parseInt(Punkte_s_a[3]);
        Leben = parseInt(Punkte_s_a[4]);

        start = 1;
      }
    }
    if (mouseX >= 405 && mouseX <= 804 && mouseY >= 613 && mouseY <= 719) {
      if (mousePressed) {
        saveStrings("Save.txt", Punkte_s_a);
        exit();
      }
    }
    if (mouseX >= 448 && mouseX <= 765 && mouseY >= 730 && mouseY <= 812) {
      if (mousePressed) {
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
        komet_2_y = 50;
        komet_2_x = 600;
        kometengeschwindigkeit_2_x = 4; 
        size_komet_2 = 80;
        komet_3_y = 50;
        komet_3_x = 500;
        kometengeschwindigkeit_3_x = 4; 
        size_komet_3 = 80;
        komet_4_y = 50;
        komet_4_x = 400;
        kometengeschwindigkeit_4_x = 4; 
        size_komet_4 = 80;
        komet_5_y = 50;
        komet_5_x = 300;
        kometengeschwindigkeit_5_x = 4; 
        size_komet_5 = 80;
        komet_6_y = 50;
        komet_6_x = 200;
        kometengeschwindigkeit_6_x = 4; 
        size_komet_6 = 70;
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
      }
    }
  }
  //rect(448, 730, 317, 82);



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
    rotate = rotate + 0.01 ;//((kometengeschwindigkeit_x + kometengeschwindigkeit_2_x + kometengeschwindigkeit_3_x + kometengeschwindigkeit_4_x + kometengeschwindigkeit_5_x + kometengeschwindigkeit_6_x) / 6 / 100);

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

    stroke(#ff0000);
    fill(#ff0000);
    rect(205, 827, ((780 / punkte_max) * Punkte), 60);

    if (Leben <= 3) {
      if (Leben == 1) {
        rect(250, 925, 230, 60);
      }
      if (Leben == 2) {
        rect(250, 925, 550, 60);
      }
      if (Leben == 3) {
        rect(250, 925, 780, 60);
      }
    } else {
      rect(250, 925, 780, 60);
    }

    stroke(#ffaa08);
    fill(#ffaa08);
    if (Leben <= 3) {
      rect(480, 925, 10, 60);
      rect(800, 925, 10, 60);
    } else {
      rect(640, 925, 10, 60);
      rect(430, 925, 10, 60);
      rect(850, 925, 10, 60);
    }
    image(LvL, 640, 900, 1000, 200);

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
      coin_x = 1400;
      coin_y = random(30, 970);
      coingeschwindigkeit_x = 4;
    }
    if (magnet_blau_x < 10) {
      magnet_blau_x = 4000;
      magnet_blau_y = random(30, 970);
      magnet_blaugeschwindigkeit_x = 4;
    }
    if (schuss_x > 1300) {
      schuss_treffer = 1;
    }
    if (komet_x < 10) {
      komet_x = 1400;
      komet_y = random(30, 970);
      size_komet = random(150, 60);
    }
    if (komet_2_x < 10) {
      komet_2_x = 1400;
      komet_2_y = random(30, 970);
      size_komet_2 = random(150, 60);
    }
    if (komet_3_x < 10) {
      komet_3_x = 1400;
      komet_3_y = random(30, 970);
      size_komet_3 = random(150, 60);
    }
    if (komet_4_x < 10) {
      komet_4_x = 1400;
      komet_4_y = random(30, 970);
      size_komet_4 = random(150, 60);
    }
    if (komet_5_x < 10) {
      komet_5_x = 1400;
      komet_5_y = random(30, 970);
      size_komet_5 = random(150, 60);
    }
    if (komet_6_x < 10) {
      komet_6_x = 1400;
      komet_6_y = random(30, 970);
      size_komet_6 = random(150, 60);
    }

    if (coin_y < (rackete_y + reichweite + 37) && coin_y > (rackete_y - reichweite - 37) && coin_x < (rackete_x + reichweite + 37) && coin_x > (rackete_x - reichweite - 37)) {
      Punkte = Punkte + 2;
      coin_x = 1400;
      coin_y = random(30, 970);
      coingeschwindigkeit_x = coingeschwindigkeit_x +0.25;
      kometengeschwindigkeit_x = kometengeschwindigkeit_x +0.25;
      kometengeschwindigkeit_2_x = kometengeschwindigkeit_2_x +0.25;
      kometengeschwindigkeit_3_x = kometengeschwindigkeit_3_x +0.25;
      kometengeschwindigkeit_4_x = kometengeschwindigkeit_4_x +0.25;
      kometengeschwindigkeit_5_x = kometengeschwindigkeit_5_x +0.25;
      kometengeschwindigkeit_6_x = kometengeschwindigkeit_6_x +0.25;
      if (Leben < 3) {
        Leben = Leben + 1;
      }
    }

    if (magnet_blau_y < (rackete_y + 55 + 37) && magnet_blau_y > (rackete_y - 55 - 37) && magnet_blau_x < (rackete_x + 55 + 37) && magnet_blau_x > (rackete_x - 55 - 37)) {
      Punkte = Punkte + 5;
      magnet_blau_x = 7000;
      magnet_blau_y = random(30, 970);
      magnet_blaugeschwindigkeit_x = 4;
      Effekt = random(0.000000000000000000000000000000000000000000001, 0.000000000000000000000000000000000000000000009);

      if (Effekt == 0.000000000000000000000000000000000000000000001) {
        if (reichweite == 155) {
          counter =  1000;
        } else {
          reichweite = reichweite + 100;
        }
      }
      if (Effekt == 0.000000000000000000000000000000000000000000002) {
        if (Leben >= 3) {
          Leben = Leben + 1;
        }
      } else {
        Leben = 3;
      }
      if (Effekt == 0.000000000000000000000000000000000000000000003) {
        if (schild == 1) {
          counter_schild = 1000;
        } else {
          schild = 1;
        }
      }
      if (Effekt == 0.000000000000000000000000000000000000000000004) {
        if (schuss == 1) {
          counter_schuss = 1000;
        } else {
          schuss = 1;
        }
      }
      if (Effekt == 0.000000000000000000000000000000000000000000009) {
        if (anziehen == 1) {
          counter_anziehen = 1000;
        } else {
          anziehen = 1;
        }
      }
      if (Effekt == 0.000000000000000000000000000000000000000000006) {
        if (reichweite_komet == 100) {
          counter_komet = 1000;
        } else {
          reichweite_komet = reichweite_komet + 45;
        }
      }
      if (Effekt == 0.000000000000000000000000000000000000000000007) {
        Leben = 1;
      }
      if (Effekt == 0.000000000000000000000000000000000000000000008) {
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
        komet_x = 1400;
        komet_y = random(30, 970);
        kometengeschwindigkeit_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet = random(150, 60);
        size_komet = size_komet / 2;
      }
      if (schuss_y < (komet_2_y + 30 + size_komet) && schuss_y > (komet_2_y - 30 - size_komet) && schuss_x < (komet_2_x + 30 + size_komet_2) && schuss_x > (komet_2_x - 30 - size_komet_2)) {
        explode_komet_2 = 1;
        explode_2_y = komet_2_y;
        explode_2_x = komet_2_x;
        komet_2_x = 1400;
        komet_2_y = random(30, 970);
        kometengeschwindigkeit_2_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet_2 = random(150, 60);
        size_komet_2 = size_komet_2 / 2;
      }
      if (schuss_y < (komet_3_y + 30 + size_komet_3) && schuss_y > (komet_3_y - 30 - size_komet_3) && schuss_x < (komet_3_x + 30 + size_komet_3) && schuss_x > (komet_3_x - 30 - size_komet_3)) {
        explode_komet_3 = 1;
        explode_3_y = komet_3_y;
        explode_3_x = komet_3_x;
        komet_3_x = 1400;
        komet_3_y = random(30, 970);
        kometengeschwindigkeit_3_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet_3 = random(150, 60);
        size_komet_3 = size_komet_3 / 2;
      }
      if (schuss_y < (komet_4_y + 30 + size_komet_4) && schuss_y > (komet_4_y - 30 - size_komet_4) && schuss_x < (komet_4_x + 30 + size_komet_4) && schuss_x > (komet_4_x - 30 - size_komet_4)) {
        explode_komet_4 = 1;
        explode_4_y = komet_4_y;
        explode_4_x = komet_4_x;
        komet_4_x = 1400;
        komet_4_y = random(30, 970);
        kometengeschwindigkeit_4_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet_4 = random(150, 60);
        size_komet_4 = size_komet_4 / 2;
      }
      if (schuss_y < (komet_5_y + 30 + size_komet_5) && schuss_y > (komet_5_y - 30 - size_komet_5) && schuss_x < (komet_5_x + 30 + size_komet_5) && schuss_x > (komet_5_x - 30 - size_komet_5)) {
        explode_komet_5 = 1;
        explode_5_y = komet_5_y;
        explode_5_x = komet_5_x;
        komet_5_x = 1400;
        komet_5_y = random(30, 970);
        kometengeschwindigkeit_5_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet_5 = random(150, 60);
        size_komet_5 = size_komet_5 / 2;
      }
      if (schuss_y < (komet_6_y + 30 + size_komet_6) && schuss_y > (komet_6_y - 30 - size_komet_6) && schuss_x < (komet_6_x + 30 + size_komet_6) && schuss_x > (komet_6_x - 30 - size_komet_6)) {
        explode_komet_6 = 1;
        explode_6_y = komet_6_y;
        explode_6_x = komet_6_x;
        komet_6_x = 1400;
        komet_6_y = random(30, 970);
        kometengeschwindigkeit_6_x = 4;
        Punkte = Punkte + 1;
        schuss_treffer = 1;
        size_komet_6 = random(150, 60);
        size_komet_6 = size_komet_6 / 2;
      }
    }

    if (schild == 0) {
      if (komet_y < (rackete_y + reichweite_komet + size_komet) && komet_y > (rackete_y - reichweite_komet - size_komet) && komet_x < (rackete_x + reichweite_komet + size_komet) && komet_x > (rackete_x - reichweite_komet - size_komet)) {
        explode_komet = 1;
        explode_y = komet_y;
        explode_x = komet_x;
        komet_x = 1400;
        komet_y = random(30, 970);
        kometengeschwindigkeit_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet = random(150, 60);
        size_komet = size_komet / 2;
      }
      if (komet_2_y < (rackete_y + reichweite_komet + size_komet_2) && komet_2_y > (rackete_y - reichweite_komet - size_komet_2) && komet_2_x < (rackete_x + reichweite_komet + size_komet_2) && komet_2_x > (rackete_x - reichweite_komet - size_komet_2)) {
        explode_komet_2 = 1;
        explode_2_y = komet_2_y;
        explode_2_x = komet_2_x;
        komet_2_x = 1400;
        komet_2_y = random(30, 970);
        kometengeschwindigkeit_2_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet_2 = random(150, 60);
        size_komet_2 = size_komet_2 / 2;
      }
      if (komet_3_y < (rackete_y + reichweite_komet + size_komet_3) && komet_3_y > (rackete_y - reichweite_komet - size_komet_3) && komet_3_x < (rackete_x + reichweite_komet + size_komet_3) && komet_3_x > (rackete_x - reichweite_komet - size_komet_3)) {
        explode_komet_3 = 1;
        explode_3_y = komet_3_y;
        explode_3_x = komet_3_x;
        komet_3_x = 1400;
        komet_3_y = random(30, 970);
        kometengeschwindigkeit_3_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet_3 = random(150, 60);
        size_komet_3 = size_komet_3 / 2;
      }
      if (komet_4_y < (rackete_y + reichweite_komet + size_komet_4) && komet_4_y > (rackete_y - reichweite_komet - size_komet_4) && komet_4_x < (rackete_x + reichweite_komet + size_komet_4) && komet_4_x > (rackete_x - reichweite_komet - size_komet_4)) {
        explode_komet_4 = 1;
        explode_4_y = komet_4_y;
        explode_4_x = komet_4_x;
        komet_4_x = 1400;
        komet_4_y = random(30, 970);
        kometengeschwindigkeit_4_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet_4 = random(150, 60);
        size_komet_4 = size_komet_4 / 2;
      }
      if (komet_5_y < (rackete_y + reichweite_komet + size_komet_5) && komet_5_y > (rackete_y - reichweite_komet - size_komet_5) && komet_5_x < (rackete_x + reichweite_komet + size_komet_5) && komet_5_x > (rackete_x - reichweite_komet - size_komet_5)) {
        explode_komet_5 = 1;
        explode_5_y = komet_5_y;
        explode_5_x = komet_5_x;
        komet_5_x = 1400;
        komet_5_y = random(30, 970);
        kometengeschwindigkeit_5_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet_5 = random(150, 60);
        size_komet_5 = size_komet_5 / 2;
      }
      if (komet_6_y < (rackete_y + reichweite_komet + size_komet_6) && komet_6_y > (rackete_y - reichweite_komet - size_komet_6) && komet_6_x < (rackete_x + reichweite_komet - size_komet_6) && komet_6_x > (rackete_x - reichweite_komet - size_komet_6)) {
        explode_komet_6 = 1;
        explode_6_y = komet_6_y;
        explode_6_x = komet_6_x;
        komet_6_x = 1400;
        komet_6_y = random(30, 970);
        kometengeschwindigkeit_6_x = 4;
        Leben = Leben -1;
        Punkte = Punkte - 2;
        size_komet_6 = random(150, 60);
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

    fill(#ffffff);
    text("Level" + level, 593, 874);
    //text("Leben:" + Leben, 650, 20);

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
      komet_2_y = 50;
      komet_2_x = 600;
      kometengeschwindigkeit_2_x = 4; 
      size_komet_2 = 80;
      komet_3_y = 50;
      komet_3_x = 500;
      kometengeschwindigkeit_3_x = 4; 
      size_komet_3 = 80;
      komet_4_y = 50;
      komet_4_x = 400;
      kometengeschwindigkeit_4_x = 4; 
      size_komet_4 = 80;
      komet_5_y = 50;
      komet_5_x = 300;
      kometengeschwindigkeit_5_x = 4; 
      size_komet_5 = 80;
      komet_6_y = 50;
      komet_6_x = 200;
      kometengeschwindigkeit_6_x = 4; 
      size_komet_6 = 70;
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