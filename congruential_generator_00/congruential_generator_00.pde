void setup() {
  strokeWeight(2);
  size(200,200);
}

void draw() {
  for (int i=0; i<width; i+=2) {
   for (int j=0; j<width; j+=2) {
      stroke(int(random(255)));
      // Compare with noise function  
      // stroke(noise(i/1.0,j/1.0)*255); 
     point(i,j);  
   }
 }
 noLoop();
}

 
