//Week 3 Homework
//Drawing Program

boolean canDraw = false;
boolean Box, triangle, sphere, pen;
int toolList = 0;
color[] colarray = {
  color(129, 43, 90), 
  color(119, 204, 170), 
  color(111, 136, 165), 
  color(147, 126, 136), 
  color(226, 70, 29), 
  color(139, 123, 139), 
  color(186, 95, 74), 
  color(0, 0, 255), 
  color(16, 255, 0), 
  color(253, 226, 62)}; //42
int colorSelect = 0;

void setup() {
  size(1600, 900);
}

void draw() {

  interf();
  colorPicker();
  controllers();

  toolbox();
  toolBoxSel();
}

void newCanvas() {

  canDraw = true;
  //fill(colarray[(int)random(0,5)]);
  fill(255);
  rect(100, 30, 1600, 890);
}

void toolbox() {
  //Draw
  if (toolList == 0) fill(255);
  else fill(100);

  //Rectangle
  if (toolList == 2) fill(255);
  else fill(100);

  //Circle
  if (toolList == 3) fill(255);
  else fill(100);

  //Triangle
  if (toolList == 4) fill(255);
  else fill(100);
}  
void toolBoxSel() {


  if (canDraw) {
    fill(colarray[colorSelect]);
    if (mousePressed) {
      if (toolList == 0) { //Draw
        line(mouseX, mouseY, pmouseX, pmouseY);
      }
      if (toolList == 1) { //Rectangle
        rect(mouseX-25, mouseY-25, 50, 50);
      }
      if (toolList == 2) { //Circle
        ellipse(mouseX, mouseY, 50, 50);
      }
      if (toolList == 3) { //Triangle
        triangle(mouseX, mouseY-25, mouseX+30, mouseY+25, mouseX-30, mouseY+25);
      }
    }
  }
}

void controllers() {

  if (mousePressed) {

    //New Canvas
    if (mouseX > width-100 && mouseX < width &&
      mouseY > height-30 && mouseY <height) {
      newCanvas();
    } 
    //Draw
    else if (mouseX > 5 && mouseX < 100 &&
      mouseY > 35 && mouseY <125) {

      toolList = 0;
    }
    //Rectangle
    else if (mouseX > 5 && mouseX < 100 &&
      mouseY > 135 && mouseY <225) {
      toolList = 1;
    }
    //Circle
    else if (mouseX > 5 && mouseX < 100 &&
      mouseY > 235 && mouseY <325) {
      toolList = 2;
    }
    //Triangle
    else if (mouseX > 5 && mouseX < 100 &&
      mouseY > 335 && mouseY <425) {
      toolList = 3;
    }
  }
}

void colorPicker() {
  int sxPos = 0;
  int col;

  for (int i = 0; i<10; i++) {
    col = color(colarray[i]);
    fill(col);
    rect(sxPos, 0, 30, 30);
    if (mousePressed) {
      if (mouseX >sxPos && mouseX <sxPos+30 && mouseY<30) {
        colorSelect = i;
        println(colorSelect);
      }
    }
    sxPos+=30;
  }
}

void interf() {
  //noStroke();



  //SideBar
  fill(0);
  rect(0, 50, 100, 900);

  //LeftBar
  fill(127, 127, 127);
  int startY = 30;
  for (int i = 0; i <4; i++) {
    rect(0, startY, 100, 100);
    startY+=100;
  }

  //LeftBar select

  /*
  5,35, 90, 90
   5,135, 90, 90
   5,235, 90, 90
   5,325, 90, 90
   */
  int startY2 = 35;
  fill(200);
  for (int i = 0; i <4; i++) {
    if (toolList == i) fill(#14C4C9);
    rect(5, startY2, 90, 90);
    fill(200);
    startY2+=100;
  }

  //LeftBar Icons

  line(10, 45, 85, 115);
  fill(colarray[colorSelect]);
  rect(15, 145, 70, 70);
  ellipse(50, 280, 60, 60);
  triangle(50, 350, 80, 400, 20, 400);

  //TopMenu
  fill(220);
  rect(0, 0, 1600, 30);

  //New Canvas Bottom
  fill(0);
  rect(width-100, height-30, 100, 30);
  fill(255);
  textSize(14);
  text("New Canvas", width-90, height-10);
}
