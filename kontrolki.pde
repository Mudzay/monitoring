boolean serwer = false; //S
boolean kamera = false; //K
boolean dym = false; //D
boolean zalanie = false; //Z
boolean klapa = false; //L
boolean pajonk = false; //P
boolean jasny = true; //J
void kontrolki()
{
  imageMode(CORNER);
    
  if(polaczenie)
  {
    P.show();
    K.show();
    O.show();
    E.show();
    Z.show();
    D.show();
    image(_connection, 10, 526, 64, 64);
    
    if(TH) tempH();
    if(THH) tempHH();
    if(TL) tempL();
  
    if(WH) humH();
    if(WHH) humHH();
    if(WL) humL();
  
    if(!kamera) image(_camOK, 158, 526, 64, 64); else { image(_camERR, 158, 526, 64, 64); state = "KAMERA SIE WYKRZACZYŁA"; }
  
    if(!serwer) image(_serwerOK, 84, 526, 64, 64); else { image(_serwerERR, 84, 526, 64, 64); state = "SERWER SIE WYKRZACZYŁ"; }
  
    if(klapa) { image(_klapa, 232, 526, 64, 64);  state = "KLAPA OTWARTA"; } else image(_ikona, 232, 526, 64, 64);
  
    if(dym) { image(_dym, 306, 526, 64, 64); state = "KTOŚ WAPUJE W SERWEROWNI"; }
    
    if(pajonk) { image(_pajonk, 380, 526, 64, 64); state = "PAJAKI, ODPALAM MIOTACZ OGNIA"; }
    
    if(zalanie) { image(_zalanie, 452, 526, 64, 64); state = "ADMINISTRATOR SIE KAPIE"; } 
  } else
  { 
    image(_nocon, 10, 526, 64, 64); 
    K.hide();
    O.hide();
    E.hide();
    Z.hide();
    D.hide();
   }
}
