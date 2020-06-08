String czas = "";
String state = "";
int T; //T
int W; //W
boolean TH = false;
boolean THH = false;
boolean TL = false;
boolean WH = false;
boolean WHH = false;
boolean WL = false;
PShader blur;

int cols, rows;
int scl = 20;
int w = 4000;
int h = 3000;

int wonszs = 20;

float flying = 0;

float[][] terrain;


float getMouseX()
{
  return map(mouseX, 0, 1000, -20, 20);
}
float getMouseY()
{
  return map(mouseY, 0, 600, -15, 15);
}

void wonsz()
{
  pointLight(20000, 20000, 20000, width/2, 60, 350);
  pointLight(100, 100, 100, width, height, 350);
  pointLight(100, 100, 100, 0, height, 350);
  flying -= 0.02;

  float yoff = flying;
  for (int y = 0; y < rows; y++) {
    float xoff = 0;
    for (int x = 0; x < cols; x++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100);
      xoff += 0.15;
    }
    yoff += 0.2;
  }
  
  stroke(wonszs);
  noFill();
  pushMatrix();
  translate(width/2, height/2+50);
  rotateX(PI/3);
  translate(-w/2, -h/2, -300);
  for (int y = 0; y < rows-1; y++) {
    beginShape();
    for (int x = 0; x < cols; x++) {
      vertex(x*scl - getMouseX(), y*scl, terrain[x][y] + getMouseY());
      vertex(x*scl - getMouseX(), (y+1)*scl, terrain[x][y+1] + getMouseY());
    }
    endShape();
  }
  popMatrix();
}

void okno()
{
  motyw();
  background(bgc);
  wonsz();
  mw();
  stopka();
  status();
  Todczyt();
  Hodczyt();
  srodek();
  kontrolki();
  if(helpb) help();
}

void motyw()
{
  if(!jasny)
  {
    c1= color(80, 80, 80);
    c2 = color(140, 140, 140);
    c3 = color(100, 100, 100);
    bgc = color(120, 120, 120);
    tc = color(0, 0, 0);
    wonszs = 50;
  } else
  {
    c1= color(30, 30, 30);
    c2 = color(80, 80, 80);
    c3 = color(50, 50, 50);
    bgc = color(40, 40, 40);
    tc = color(160, 160, 160);
    wonszs = 20;
  }
}

void mw()
{
  textAlign(CENTER);
  imageMode(CENTER);
  fill(c1);
  rect(0, 0, 1000, 84);
  fill(c2);
  textSize(90);
  text("MONITORING SERWEROWNI", 500, 65);
  image(_ikona, 60, 45, 64, 64);
  image(_ikona, 940, 45, 64, 64);
  fill(tc);
  textSize(24);
  text(czas, 500, 100);
  text("F1 - POMOC", 500, 120);
}

void stopka()
{
  textSize(32);
  textAlign(RIGHT);
  fill(c1);
  rect(760, 548, 240, 52);
  fill(c2);
  text("MISTRZOWIE JUTRA", 990, 570);
  text("PIOTR MADRAK", 990, 592);
}

void status()
{
  textAlign(CENTER);
  textSize(28);
  fill(255);
  text("STATUS", 500, 230);
  fill(c2);
  rect(305, 235, 390, 34);
  fill(tc);
  textSize(30);
  text(state, 500, 260);
}

void Todczyt()
{
  textSize(100);
  textAlign(CENTER);
  if(!THH) fill(c2); else fill(255, 0, 0);
  arc(250, 85, 300, 300, 0, PI); //centerx, centery, rx, ry, ?, ?
  fill(tc);
  if(polaczenie) text(str(T) + "°C", 250, 175); else text("---", 250, 175);
}

void Hodczyt()
{
  textSize(100);
  textAlign(CENTER);
  if(!WHH) fill(c2); else fill(255, 0, 0);
  arc(750, 85, 300, 300, 0, PI); //centerx, centery, rx, ry, ?, ?
  fill(tc);
  if(polaczenie) text(str(W) + "%RH", 750, 175); else text("---", 750, 175);
}

void srodek()
{
  stroke(20);
  fill(c2);
  rect(75, 280, 350, 200);
  rect(575, 280, 350, 200);
  image(_steve, 500, 430, 48, 108);
}

void tempH()
{
  fill(tc);
  textAlign(LEFT);
  textSize(64);
  text("WYSOKA", 90, 325);
  text("TEMPERATURA", 90, 365);
}
void tempHH()
{
  fill(255, 0, 0);
  textAlign(LEFT);
  textSize(64);
  text("ZBYT", 90, 325);
  text("WYSOKA", 90, 365);
  text("TEMPERATURA", 90, 405);
}
void tempL()
{
  fill(tc);
  textAlign(LEFT);
  textSize(64);
  text("NISKA", 90, 325);
  text("TEMPERATURA", 90, 365);
}
void humH()
{
  fill(tc);
  textAlign(LEFT);
  textSize(64);
  text("WYSOKA", 590, 325);
  text("WILGOTNOSC", 590, 365);
}
void humHH()
{
  fill(255, 0, 0);
  textAlign(LEFT);
  textSize(64);
  text("ZBYT", 590, 325);
  text("WYSOKA", 590, 365);
  text("WILGOTNOSC", 590, 405);
}
void humL()
{
  fill(tc);
  textAlign(LEFT);
  textSize(64);
  text("NISKA", 590, 325);
  text("WILGOTNOSC", 590, 365);
}
