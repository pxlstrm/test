float x; 
float y; 

void setup() {
 size(500,500);
 background(0);
 stroke(255);
 randomSeed(3);
 x=random(width); 
 y=random(height);
}

void draw() {
 
float left = -20;
float right = 20;
float bottom = -20;
float top = 20;
  
float xnew = x+random(left, right) ;
float ynew = y+random(bottom, top) ;
  
 line(x,y,xnew,ynew);
 x=xnew;
 y=ynew;
}
