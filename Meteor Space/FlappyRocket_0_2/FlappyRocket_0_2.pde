PImage Rackete;
PImage Coin;
PImage Hintergrund;
PImage Komet;
PImage Gegner;

float rackete_y;
float rackete_x;
float coin_y;
float coin_x;
float coingeschwindigkeit_x;
float komet_y;
float komet_x;
float kometengeschwindigkeit_x;
float komet_2_y;
float komet_2_x;
float kometengeschwindigkeit_2_x;
float komet_3_y;
float komet_3_x;
float kometengeschwindigkeit_3_x;
float komet_4_y;
float komet_4_x;
float kometengeschwindigkeit_4_x;

int Punkte;
int Leben;

void setup() {
  Hintergrund = loadImage("Sterne.png");
  Rackete = loadImage("Rackete.png");
  Coin = loadImage("Schraubenschlüssel.png");
  Komet = loadImage("Komet.png");

  fullScreen();
  rackete_y = 300;
  rackete_x = 150;
  coin_y = 300;
  coin_x = 700;
  coingeschwindigkeit_x = 4;
  komet_y = 50;
  komet_x = 700;
  kometengeschwindigkeit_x = 4; 
  komet_2_y = 50;
  komet_2_x = 600;
  kometengeschwindigkeit_2_x = 4; 
  komet_3_y = 50;
  komet_3_x = 500;
  kometengeschwindigkeit_3_x = 4; 
  komet_4_y = 50;
  komet_4_x = 400;
  kometengeschwindigkeit_4_x = 4; 
  Leben = 3;
  imageMode(CENTER);
}

void draw() {
  image(Hintergrund, 400, 300, 800, 600);
  image(Hintergrund, 400, 900, 800, 600);
  image(Hintergrund, 1200, 300, 800, 600);
  image(Hintergrund, 1200, 900, 800, 600);
  image(Coin, coin_x, coin_y, 75, 75);
  image(Komet, komet_x, komet_y, 100, 100);
  image(Komet, komet_2_x, komet_2_y, 100, 100);
  image(Komet, komet_3_x, komet_3_y, 100, 100);
  image(Komet, komet_4_x, komet_4_y, 100, 100);
  image(Rackete, rackete_x, rackete_y, 100, 100);

  rackete_y = mouseY;
  rackete_x = mouseX;

  if (coin_x < rackete_x) {
    coingeschwindigkeit_x = coingeschwindigkeit_x + 6;
  }
  coin_x = coin_x - coingeschwindigkeit_x;
  komet_x = komet_x - kometengeschwindigkeit_x;
  komet_2_x = komet_2_x - kometengeschwindigkeit_2_x;
  komet_3_x = komet_3_x - kometengeschwindigkeit_3_x;
  komet_4_x = komet_4_x - kometengeschwindigkeit_4_x;

  if (coin_x < 10) {
    coin_x = 1400;
    coin_y = random(30, 970);
    coingeschwindigkeit_x = 4;
  }
  if (komet_x < 10) {
    komet_x = 1400;
    komet_y = random(30, 970);
    kometengeschwindigkeit_x = 4;
  }
  if (komet_2_x < 10) {
    komet_2_x = 1400;
    komet_2_y = random(30, 970);
    kometengeschwindigkeit_2_x = 4;
  }
  if (komet_3_x < 10) {
    komet_3_x = 1400;
    komet_3_y = random(30, 970);
    kometengeschwindigkeit_3_x = 4;
  }
  if (komet_4_x < 10) {
    komet_4_x = 1400;
    komet_4_y = random(30, 970);
    kometengeschwindigkeit_4_x = 4;
  }

  if (coin_y < (rackete_y + 55) && coin_y > (rackete_y - 55) && coin_x < (rackete_x + 55) && coin_x > (rackete_x - 55)) {
    Punkte = Punkte + 1;
    coin_x = 1400;
    coin_y = random(30, 970);
    coingeschwindigkeit_x = coingeschwindigkeit_x +0.25;
    kometengeschwindigkeit_x = kometengeschwindigkeit_x +0.25;
    kometengeschwindigkeit_2_x = kometengeschwindigkeit_2_x +0.25;
    kometengeschwindigkeit_3_x = kometengeschwindigkeit_3_x +0.25;
    kometengeschwindigkeit_4_x = kometengeschwindigkeit_4_x +0.25;

    if (Leben < 3) {
      Leben = Leben + 1;
    }
  }
  if (komet_y < (rackete_y + 55) && komet_y > (rackete_y - 55) && komet_x < (rackete_x + 55) && komet_x > (rackete_x - 55)) {
    komet_x = 1400;
    komet_y = random(30, 970);
    kometengeschwindigkeit_x = 4;
    Leben = Leben -1;
  }
  if (komet_2_y < (rackete_y + 55) && komet_2_y > (rackete_y - 55) && komet_2_x < (rackete_x + 55) && komet_2_x > (rackete_x - 55)) {
    komet_2_x = 1400;
    komet_2_y = random(30, 970);
    kometengeschwindigkeit_2_x = 4;
    Leben = Leben -1;
  }
  if (komet_3_y < (rackete_y + 55) && komet_3_y > (rackete_y - 55) && komet_3_x < (rackete_x + 55) && komet_3_x > (rackete_x - 55)) {
    komet_3_x = 1400;
    komet_3_y = random(30, 970);
    kometengeschwindigkeit_3_x = 4;
    Leben = Leben -1;
  }
  if (komet_4_y < (rackete_y + 55) && komet_4_y > (rackete_y - 55) && komet_4_x < (rackete_x + 55) && komet_4_x > (rackete_x - 55)) {
    komet_4_x = 1400;
    komet_4_y = random(30, 970);
    kometengeschwindigkeit_4_x = 4;
    Leben = Leben -1;
  }

  if (coingeschwindigkeit_x == 10) {
    coingeschwindigkeit_x = 4;
  }

  text("Punkte:" + Punkte, 700, 20);
  text("Leben:" + Leben, 650, 20);


  if (mousePressed) {
    exit();
  }
  if (Leben < 1) {
    Hintergrund = loadImage("Sterne.png");
    Rackete = loadImage("Rackete.png");
    Coin = loadImage("Schraubenschlüssel.png");
    Komet = loadImage("Komet.png");
    fullScreen();
    rackete_y = 300;
    rackete_x = 150;
    coin_y = 300;
    coin_x = 700;
    coingeschwindigkeit_x = 4;
    komet_y = 50;
    komet_x = 700;
    kometengeschwindigkeit_x = 4;
    komet_2_y = 50;
    komet_2_x = 600;
    kometengeschwindigkeit_2_x = 4; 
    komet_3_y = 50;
    komet_3_x = 500;
    kometengeschwindigkeit_3_x = 4; 
    komet_4_y = 50;
    komet_4_x = 400;
    kometengeschwindigkeit_4_x = 4; 
    Leben = 3;
    Punkte = 0;
    imageMode(CENTER);
  }
}