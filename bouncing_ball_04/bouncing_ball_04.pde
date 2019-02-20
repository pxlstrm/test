 
float x; 
float y; 
float speedx;
float speedy;

void setup() {
 size(300,300);
 background(0);
 stroke(255); noFill();
 randomSeed(0);
 x=random(width); 
 y=random(height);
 
 speedx=int(random(-5,5));
 speedy=int(random(-5,5));
 frameRate(120);
}

void draw() {
 ellipse(x,y,30,30);
 
 
 x=x+speedx; 
 if (x>width)   {x=width; speedx=-speedx; speedx=speedx+random(-1,1);}
 if ( x<=0) {x=0; speedx=-speedx;}
 y=y+speedy; 
 if (y>height)   {y=height; speedy=-speedy;}
 if (y<0) {y=0; speedy=-speedy;} 

 fade();
}

void fade() {
  fill(0,1); noStroke();
 rect(0,0,width, height);
 stroke(255); noFill(); 
}
