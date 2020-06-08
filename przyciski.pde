color c1 = color(80, 80, 80);
color c2 = color(140, 140, 140);
color c3 = color(100, 100, 100);
color bgc = color(120, 120, 120);
color tc = color(0, 0, 0);
controlP5.Button P;
controlP5.Button K;
controlP5.Button O;
controlP5.Button E;
controlP5.Button Z;
controlP5.Button D;

public void przyciski()
{
  P = cp5.addButton("POWER")
     .setBroadcast(false)
     .setValue(0)
     .setPosition(550, 500)
     .setSize(200,20)
     .setColorBackground(c1)
     .setColorForeground(c3)
     .setColorActive(c1)
     .setColorLabel(c2)
     .setLabel("POLACZ")
     .setBroadcast(true)
     ;
  K = cp5.addButton("KAMERA")
     .setBroadcast(false)
     .setValue(0)
     .setPosition(550, 520)
     .setSize(200,20)
     .setColorBackground(c1)
     .setColorForeground(c3)
     .setColorActive(c1)
     .setColorLabel(c2)
     .setLabel("ZRESETUJ KAMERE")
     .setBroadcast(true)
     ;
  O = cp5.addButton("ODPLYW")
     .setBroadcast(false)
     .setValue(0)
     .setPosition(550, 540)
     .setSize(200,20)
     .setColorBackground(c1)
     .setColorForeground(c3)
     .setColorActive(c1)
     .setColorLabel(c2)
     .setLabel("SPUSC WODE")
     .setBroadcast(true)
     ;
  E = cp5.addButton("EKSTERMINUJ")
     .setBroadcast(false)
     .setValue(0)
     .setPosition(550, 560)
     .setSize(200,20)
     .setColorBackground(c1)
     .setColorForeground(c3)
     .setColorActive(c1)
     .setColorLabel(c2)
     .setLabel("EKSTERMINUJ PAJAKI")
     .setBroadcast(true)
     ;
  Z = cp5.addButton("ZAMKNIJ")
     .setBroadcast(false)
     .setValue(0)
     .setPosition(750, 500)
     .setSize(200,20)
     .setColorBackground(c1)
     .setColorForeground(c3)
     .setColorActive(c1)
     .setColorLabel(c2)
     .setLabel("ZAMKNIJ KLAPE")
     .setBroadcast(true)
     ;
  D = cp5.addButton("ODDYMIANIE")
     .setBroadcast(false)
     .setValue(0)
     .setPosition(750, 520)
     .setSize(200,20)
     .setColorBackground(c1)
     .setColorForeground(c3)
     .setColorActive(c1)
     .setColorLabel(c2)
     .setBroadcast(true)
     ; 
}

public void POWER() //P
{
  polaczenie = !polaczenie;
}
public void KAMERA() //K
{
  //setOut('K');
  //println("K");
  kamera = !kamera;
}
public void ODPLYW() //O
{
  //setOut('O');
  zalanie = !zalanie;
}
public void EKSTERMINUJ() //E
{
  //setOut('E');
  pajonk = !pajonk;
}
public void ZAMKNIJ() //Z
{
  //setOut('Z');
  klapa = !klapa;
}
public void ODDYMIANIE() //D
{
  //setOut('D');
  dym = !dym;
}
