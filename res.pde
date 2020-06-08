PImage _ikona;
PImage _serwerOK;
PImage _serwerERR;
PImage _connection;
PImage _nocon;
PImage _dym;
PImage _klapa;
PImage _camOK;
PImage _camERR;
PImage _pajonk;
PImage _zalanie;
PImage _steve;
PFont trzcionka;

void imgs()
{
  _ikona = loadImage("data\\serwer.png");
  _serwerOK = loadImage("data\\sok.png");
  _serwerERR = loadImage("data\\serr.png");
  _connection = loadImage("data\\conn.png");
  _nocon = loadImage("data\\nocon.png");
  _dym = loadImage("data\\dym.png");
  _klapa = loadImage("data\\klapa.png");
  _camOK = loadImage("data\\camok.png");
  _camERR = loadImage("data\\camerr.png");
  _pajonk = loadImage("data\\pajonk.png");
  _zalanie = loadImage("data\\woda.png");
  _steve = loadImage("data\\steve.png");
  trzcionka = createFont("data\\Pixel-UniCode.ttf", 32); 
}
