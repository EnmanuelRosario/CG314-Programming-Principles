void setup() {
  size(640,480);
  background(#C37BDE);
  stroke(255,50,20);
  
  //fill(colorA, colorB, colorC);
  
  //strokeWeight(2);
  //noFill();
  //noStroke();
}

void draw(){
  int colorA = int(random(255));
  int colorB = int(random(255));
  int colorC = int(random(255));
  fill(colorA, colorB, colorC);
  ellipse(mouseX, mouseY, 50, 50);
}