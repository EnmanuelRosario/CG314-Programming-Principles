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