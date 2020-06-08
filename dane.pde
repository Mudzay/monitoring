//void ustaw(char tk, int wt)
//{
//  switch(tk)
//    {
//      case 'T':
//        T = wt;
//        break;
//      case 'W':
//        W = wt;
//        break;
//    }
//    println("ustaw1");
//}

//void setOut(char tk)
//{
//  out = tk;
//}

//void ustawb(char tk, boolean wt)
//{
  
//  switch(tk)
//    {
//      case 'S':
//        serwer = wt;
//        break;
//      case 'K':
//        kamera = wt;
//        break;
//      case 'D':
//        dym = wt;
//        break;
//      case 'Z':
//        zalanie = wt;
//        break;
//      case 'L':
//        klapa = wt;
//        break;
//      case 'P':
//        pajonk = wt;
//        break;
//      case 'J':
//        jasny = wt;
//        break;
//    }
//  }

void dane()
{
  if(T>25 && !THH) TH = true; else TH = false;  
  if(T>30) THH = true; else THH = false;
  if(T<10) TL = true; else TL = false;
  
  if(W>75 && !WHH) TH = true; else WH = false;  
  if(W>65) WHH = true; else WHH = false;
  if(W<20) WL = true; else WL = false;
}

//void dane()
//{
//  //if(millis() - timeout >= 2000) polaczenie = false; else polaczenie = true;
//  odczyt();
//  //assign();
//}
