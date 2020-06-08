int helpw = width - 100;
int helph = width - 60;

float phase = 0;
float zoff = 0;

void help()
{
  fill(c1, 140);
  imageMode(CORNER);
  beginShape();
  vertex(0, 0, 1);
  vertex(width, 0, 1);
  vertex(width, height, 1);
  vertex(0, height, 1);
  endShape(CLOSE);
  imageMode(CENTER);
  stroke(c2);
  strokeWeight(2);
  fill(c3);
  beginShape();
  float noiseMax = map(30 + mouseX/20, 0 + mouseY / 20, width, 1, 5);
  for (float a = 0; a < TWO_PI; a += radians(5)) {
    float xoff = map(cos(a + phase), -1, 1, 0, noiseMax);
    float yoff = map(sin(a + phase), -1, 1, 0, noiseMax);
    float r = map(noise(xoff, yoff, zoff), 0, 1, 200, height / 1.2);
    float x = r * cos(a);
    float y = r * sin(a);
    vertex(x + width/2, y+height/2, 2);
  }
  endShape(CLOSE);
  phase += 0.001;
  zoff += 0.01;
  fill(tc);
  textAlign(CENTER, BOTTOM);
  textSize(130);
  text("POMOC", width/2, height/2, 10);
  textAlign(CENTER, TOP);
  textSize(32);
  text("Wcisnij BACKSPACE aby zamknac okienko pomocy", width/2, height/2-45, 10);
  textSize(32);
  text("Wcisnij M aby zmienic motyw", width/2, height/2-20, 10);
}
