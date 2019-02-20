void setup() {
  strokeWeight(2);
  size(1023,1023);
}

void draw() {
  for (int i=0; i<width; i+=2) {
   for (int j=0; j<width; j+=2) {
      stroke(RND(255));
      // stroke(int(random(255)));
      // Compare with noise function  
      // stroke(noise(i/1.0,j/1.0)*255); 
     point(i,j);  
   }
 }
 noLoop();
}

long xold=0;

long RND(long limit) {
 long a=1997; long b=1023;
 long m=1048576;
 
 long xnew = (a* xold + b ) % m;
 xold=xnew;
 
 //println( xnew);
 return int(xnew*limit/m);  
}
 
