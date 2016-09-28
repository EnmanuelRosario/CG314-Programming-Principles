//Processing week 4 homework
//Robot
float StartX;
float StartY;
float N  = .2;

PImage nuky;

int mov = 0;

void setup() {

  size(600, 800);
  background(127, 127, 127); //Gray Background
  ellipseMode(RADIUS);
  strokeWeight(0);
  nuky =loadImage("nuke.png");

  StartX = width/2;
  StartY = 100;
}

void draw() {
  
  //bg();
  
  BGround();
  //background(255);
  scale(N);
  StartX = width/(2*N);
  strokeWeight(1/N);
  robot();
  N +=0.001;
  StartY+=1;
  StartX*=N;
  
  println(N);
  if(N > 1) {
    N=1;
    image(nuky, 0, 0, 600, 800);
  }
}