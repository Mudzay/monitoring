import controlP5.*;
import processing.serial.*;
import javax.swing.JOptionPane;

ControlP5 cp5;
Serial ser;

boolean helpb = false;

long czasss = millis();

void setup()
{
  frameRate(120);
  cp5 = new ControlP5(this);
  //serialSetup();
  przyciski();
  frame.setTitle("MONITORING SERWEROWNI | PIOTR MADRAK");
  surface.setIcon(_ikona);
  size(1000, 600, P3D);
  imgs();
  cols = w / scl;
  rows = h/ scl;
  terrain = new float[cols][rows];
  textFont(trzcionka);
  czas = day() + "/" + month() + "/" + year() + " " + hour() + ":" + minute() + ":" + second();
}

void draw()
{
  if(!polaczenie) state = "BRAK POLACZENIA";
  rnd();
  czas = day() + "/" + month() + "/" + year() + " " + hour() + ":" + minute() + ":" + second();
  dane();
  //if(!polaczenie) state = "BRAK POLACZENIA";
  okno();
  //slij();
  //if(millis() - timeout >= 2000) polaczenie = false;
}

void keyPressed()
{
  if(key == BACKSPACE) helpb = false;
  if(key == TAB) helpb = true;
  if(key == 'm' || key == 'M') jasny = !jasny; 
}
