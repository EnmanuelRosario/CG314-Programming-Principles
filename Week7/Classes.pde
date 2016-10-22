//HOW TO USE:
// pancakes( imageFile, Image size, Falling Speed)

class Pancakes {
  float x;
  float y; 
  float xStart;
  float yStart;
  int xImg;
  int speed;
  PImage pancakes; 

  Pancakes(PImage tempImg, int tempxImg,int tempSpeed) {
    x = width;
    y = height;
    xImg = tempxImg;
    
    speed = tempSpeed;
    pancakes = tempImg;
    xStart = random(x);
    yStart = random(-100, -50);
  }

  void rain() {
    //background(0);
    if (xStart < x) {
      image(pancakes, xStart, yStart,xImg, xImg );
    } 
    if ( yStart > y) {
      
      xStart = random(x);
      yStart = random(-100, -50);
    } 
    
    yStart+=speed;
  }
}




