// random dot pattern with fixed color composition
// AW, March 2015

color c0, c1,c2; // Farben für background, fill und stroke
float x; float y; // Koordinaten
float r=30; // Radius

int baseColorHue=int(random(360));
int baseSaturation=50;
int baseBrightness=50;
int randomRange =50;

void defineColors() {
  c0 = color(baseColorHue,           baseSaturation,baseBrightness);
  c1 = color((baseColorHue+120)%360, baseSaturation+random(randomRange), baseBrightness+random(randomRange));
  c2 = color (baseColorHue-120,      baseSaturation+random(randomRange), baseBrightness+random(randomRange));
}

void setup() {
  colorMode(HSB, 360, 100, 100);
  newColors();
 
  size(800,800);
  strokeWeight(4);
  x=width/2; y=width/2;
  frameRate(15);
}

void mousePressed() {
 newColors(); 
}

void draw() {
  baseColorHue=360*mouseX/width;
  defineColors();
  // Position und Grösse zufällig wandern lassen:
  x=(x+random(-45,45)+width)%width; y=(y+random(-35,35)+height)%height;
  r=max(10,abs(r+random(-10,10)));
  
  // Farbringe zeichnen
  fill(c1);
  stroke(c2);
  ellipse(x,y,r,r );  
}
  
void newColors() {
   baseColorHue=int(random(360));
   defineColors();
   background(c0);
}
