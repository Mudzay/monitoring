String port;
String in = null;
char out = '\0';
String[] dane = {};
String lastport = "COM...";

int timeout = millis();

char token;
int wartoscTokenu;

int baud = 9600;

boolean poprawne = false;
boolean polaczenie = false;

void serialSetup()
{
  try 
  {
    try{ ser.stop(); } catch(Exception e){}
    port = JOptionPane.showInputDialog(Serial.list(), lastport);
    ser = new Serial(this, port, baud);
    ser.bufferUntil('\n');
    polaczenie = true;
    lastport = port;
    timeout = millis();
    
  } catch(Exception e) { println(e); port = null;}
}

//void serialEvent(Serial ser)
//{
//  try
//  {
//    dane = splitTokens(ser.readString());
//    poprawne = true;
//    ser.clear();
//    timeout = millis();
    
//  } catch(Exception e) { println(e); polaczenie = false;}
//}

void slij2()
{
  try
  {
    if(out != '\0') ser.write(out);
    println(out);
    if(out != '\0') ser.write('\0');
    ser.clear();
  } catch(Exception e) { println(e); polaczenie = false;}
}

void slij()
{
  if(czasss + 50 < millis()) { slij2(); czasss = millis(); } else
  {
  ser.write("ping");
  ser.write("\n");
  czasss = millis();
  ser.clear();
  }
}
//void assign()
//{
//  if(poprawne)
//  {
//    try
//    {
//      if(dane[2] != null) state = trim(dane[2]);
//    if(dane[0].charAt(0) == 'T' || dane[0].charAt(0) == 'W') ustaw(dane[0].charAt(0), int(trim(dane[1])));
//    else if(dane[0].charAt(0) != 'X'); ustawb(dane[0].charAt(0), boolean(trim(dane[1])));
//    in = null;
//    } catch(Exception e) { println(e); }
//  }
//}
