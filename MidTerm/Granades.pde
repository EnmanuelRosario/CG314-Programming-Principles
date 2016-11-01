class Granades {
  PImage granades;
  public float GranX;
  public float GranY;
  boolean run  = true;
  int Outz;
  int TempSpeed;
  int ActualSpeed;


  void setup() {
  }

  void update(int Speed, int Out, int plX, int plY) {
    Outz = Out;
    println("TempSpeed: " + TempSpeed);
    println("Speed: " + Speed);
    ActualSpeed = Speed;
    if (run) {
      TempSpeed = Speed;
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
    if (GranX > plX && GranX < plX+100 && GranY > plY && GranY < plY+100) {
         ActualSpeed = TempSpeed;
      println("Reset");
      reset();
    }
  }

  void reset() {
    GranX = Outz+(random(2000));
    GranY = random(900);
  }

  int SpeedRun() {
    return ActualSpeed;
  }
}