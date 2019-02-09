// creates random color based on Kuler analogos color scheme and some random distribution
// AW, March 2015

 

color c0, c1,c2; // Farben für background, fill und stroke
float x; float y; // Koordinaten
float r=20; // Radius

void setup() {
 
  defineColors();
  background(0);
  size(400,400);
  strokeWeight(4);
  x=width/2; y=width/2;
  frameRate(15);
}

void draw() {
 
  defineColors();
  
  // Position und Grösse zufällig wandern lassen:
  x=(x+random(-25,25)+width)%width; y=(y+random(-25,25)+height)%height;
  r=abs(r+random(-10,10));
  
  // Farbringe zeichnen
  fill(c1);
  stroke(c2);
  ellipse(x,y,r,r );
  
}
  
void defineColors() {
 c0 = color(random(255),            random(255),                      random(255));
 c1 = color(random(255),            random(255),                      random(255));
 c2 = color(random(255),            random(255),                      random(255));
}
