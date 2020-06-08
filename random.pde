float rn;

float rn1;

float rn2;

void alloff()
{
  kamera = false;
  serwer = false;
  klapa = false;
  dym = false;
  pajonk = false;
  zalanie = false;
}

void rnd()
{
  if(frameCount%180==0)
  {
    randomSeed(millis());
    //rn = random(15, 35);
    //T = int(rn - rn%1);
    T = int(round(random(15, 35)));
    rn1 = random(50, 70);
    W = int(rn1 - rn1%1);
  }
  if(frameCount%360==0)
  {
    rn2 = random(0, 6);
    switch(int(rn2 - rn2%1))
    {
      case 0:
        alloff();
        kamera = true;
        break;
      case 1:
        alloff();
        serwer = true;
        break;
      case 2:
        alloff();
        klapa = true;
        break;
      case 3:
        alloff();
        dym = true;
        break;
      case 4:
        alloff();
        pajonk = true;
        break;
      case 5:
        alloff();
        zalanie = true;
        break;
    }
  }
}
