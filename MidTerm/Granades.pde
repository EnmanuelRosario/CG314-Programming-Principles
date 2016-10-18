class Granades {
  PImage granades;
  float GranX;
  float GranY;
  boolean run  = true;
  int Outz;
  


  void setup() {
  }

  void update(int Speed, int Out, int plX, int plY) {
    Outz = Out;
    if (run) {
      granades = loadImage("grenade.png"); 
      GranX = Out+(random(2000));
      GranY = random(900);
      run = false;
    }
    if (GranX > -500) {
      image(granades, GranX, GranY);
      GranX -=Speed;
    }
    if (GranX < -60) reset();
    if(GranX > plX && GranX < plX+100 && GranY > plY && GranY < plY+100) {
      println("Hey");
      background(0);
      
    }
  }

  void reset() {
    GranX = Outz+(random(2000));
    GranY = random(900);
  }
}