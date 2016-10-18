PImage pancake, background;

ArrayList<Granades> granines;

int alive = 1;

int plX, plY;
int pSpeed = 8;
int time = 0;
int GraSpeed = 2;


void setup() {
  size(1200, 900);
  background = loadImage("bg.jpg");
  plX = 50;
  plY = height/2;
  //h1.setup();
  pancake = loadImage("pancake.png");
  granines = new ArrayList<Granades>();
  for (int i = 0; i < 10; i++) {
    granines.add(new Granades() );
  }
}

void draw() {
   
  if (alive ==1) {
    image(background, 0, 0);
    //h1.update();
    //h2.update();

    //for (Granades a : granines) {
    //  a.update(5);
    //}
  time+=1;
  println(time);
  if(time >1000) {
    time = 0;
    GraSpeed+=5;
    print("Hey You");
  }
for (Granades a : granines) {
        a.update(GraSpeed, width,plX,plY);
      }

    //if (millis() > 200000) {           //End Game
    //  for (Granades a : granines) {
    //    a.update(200, width,plX, plY);
    //  }
    //} else if (millis() > 75000) {           //Final Level
    //  for (Granades a : granines) {
    //    a.update(20, width, plX,plY);
    //  }
    //} else if (millis() > 60000) {          //5th Level
    //  for (Granades a : granines) {
    //    a.update(12, width,plX, plY);
    //  }
    //} else if (millis() > 45000) {           //4th Level
    //  for (Granades a : granines) {
    //    a.update(10, width,plX,plY);
    //  }
    //} else if (millis() > 30000) {          //3rd Level
    //  for (Granades a : granines) {
    //    a.update(7, width,plX,plY);
    //  }
    //} else if (millis() > 15000) {          //2nd Level
    //  for (Granades a : granines) {
    //    a.update(5, width,plX,plY);
    //  }
    //} else {          //1st Level
    //  for (Granades a : granines) {
    //    a.update(2, width,plX,plY);
    //  }
    //}
  }
  character();
}

void character() {
  image(pancake, plX, plY);
  movement();
}


void movement() {
  if (key == 'w') {
    if (plY > 0) {
      plY -= pSpeed;
      //key = 0;
    }
  }
  if (key == 's') {
    if (plY < height-50) {
      plY += pSpeed;
      //key = 0;
    }
  }
  if (key == 'a') {
    if (plX > 0) {
      plX -= pSpeed;
    }
  }
  if (key == 'd') {
    if (plX < width-100) {
      plX += pSpeed;
    }
  }
} 