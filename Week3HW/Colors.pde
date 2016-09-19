
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