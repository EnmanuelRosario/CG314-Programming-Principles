
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
        rect(mouseX-25, mouseY-25, 50,50);
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