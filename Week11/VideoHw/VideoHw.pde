/* Enmanuel Rosario Video Edit
Press 1-4 to change frames, 0 to reset.
Press q,w,e,r,t,y for different color types.
MousePress and drag to change colors.
*/
import processing.video.*;
Capture video;
PImage f1, f2, f3, f4, f5;
int frames = 0;
int CameraColors;
float r1, g1,b1;


void setup() {
  size(640, 480);
  f1 = loadImage("frame01.png");
  f2 = loadImage("frame02.png");
  f3 = loadImage("frame03.png");
  f4 = loadImage("frame04.png");


  video = new Capture(this, 640, 480);
  video.start();
}

void draw() {
  background(0);
  loadPixels();

  video.loadPixels();
  switch(CameraColors) {
  case 0:
    for (int x = 0; x<width; x++) {
      for (int y=0; y<height; y++) {
        int theIndex = x + y * width;
        float r = red(video.pixels[theIndex]);
        float g = green(video.pixels[theIndex]);
        float b = blue(video.pixels[theIndex]);
        pixels[theIndex] = color(r, g+g1, b+b1);
      }
    }
    break;

  case 1:
    for (int x = 0; x<width; x++) {
      for (int y=0; y<height; y++) {
        int theIndex = x + y * width;
        float r = random((red(video.pixels[theIndex])));
        float g = random((green(video.pixels[theIndex])));
        float b = random((blue(video.pixels[theIndex])));
        pixels[theIndex] = color(r, g+g1, b+b1);
      }
    }
    break;

  case 2:
    for (int x = 0; x<width; x++) {
      for (int y=0; y<height; y++) {
        int theIndex = x + y * width;
        float r = 255 -red(video.pixels[theIndex]);
        float g = 255 - green(video.pixels[theIndex]);
        float b = 255 - blue(video.pixels[theIndex]);
        pixels[theIndex] = color(r, g+g1, b+b1);
      }
    }
    break;

  case 3:
    for (int x = 0; x<width; x++) {
      for (int y=0; y<height; y++) {
        int theIndex = x + y * width;
        float r = 255 -(random((red(video.pixels[theIndex]))));
        float g = 255 - (random((green(video.pixels[theIndex]))));
        float b = 255 - (random((blue(video.pixels[theIndex]))));
        //pixels[theIndex] = color(r, g, b);
        pixels[x + y * width] = color(r, g+g1, b+b1);
      }
    }
    break;

  case 4:
    for (int x = 0; x<width; x++) {
      for (int y=0; y<height; y++) {
        int theIndex = x + y * width;
        float distance = dist(x, y, width/2, height/2);
        r1 = map (distance, 0, 300, 255, 0);
        g1 = map (mouseY, 0, height, 0, 50); 
        b1 = map (mouseX, 0, width, 0, 100);

        float r = (red(video.pixels[theIndex]));
        float g = (green(video.pixels[theIndex]));
        float b = (blue(video.pixels[theIndex]));
        pixels[theIndex] = color (r, g+g1, b+b1);
        //pixels[x + y * width] = color (r, g+g1, b+b1);
      }
    }
    break;
  }
  updatePixels();
  video.updatePixels();
  switch (frames) {
  case 0: 

    break;
  case 1: 
    image(f1, 0, 0);
    break;
  case 2: 
    image(f2, 0, 0);
    break;
  case 3: 
    image(f3, 0, 0);
    break;
  case 4: 
    image(f4, 0, 0);
    break;
  }
  
  if (mousePressed) {
    for (int x = 0; x<width; x++) {
      for (int y=0; y<height; y++) {
        int theIndex = x + y * width;
        float distance = dist(x, y, width/2, height/2);
        r1 = map (distance, 0, 300, 255, 0);
        g1 = map (mouseY, 0, height, 0, 50); 
        b1 = map (mouseX, 0, width, 0, 100);
      }
    }
  } else {
      r1 = 0;
      g1 = 0;
      b1 = 0;
  }
  
}

void keyPressed() {
  if (key == '0') {
    frames = 0;
  } else if (key == '1') {
    frames = 1;
  } else if (key == '2') {
    frames = 2;
  } else if (key == '3') {
    frames = 3;
  } else if (key == '4') {
    frames = 4;
  }

  if (key == 'q') {
    CameraColors = 0;
  } else if (key == 'w') {
    CameraColors = 1;
  } else if (key == 'e') {
    CameraColors = 2;
  } else if (key == 'r') {
    CameraColors = 3;
  } else if (key == 't') {
    CameraColors = 4;
  }
}

void mousePressed() {
  
}
void captureEvent(Capture video) {
  video.read();
}