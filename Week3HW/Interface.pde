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
    if(toolList == i) fill(#14C4C9);
    rect(5, startY2, 90, 90);
    fill(200);
    startY2+=100;
  }
  
  //LeftBar Icons
  
  line(10, 45, 85, 115);
  fill(colarray[colorSelect]);
  rect(15,145, 70,70);
  ellipse(50,280, 60,60);
  triangle(50, 350, 80, 400, 20, 400);
  
  //TopMenu
  fill(220);
  rect(0,0,1600,30);
  
  //New Canvas Bottom
  fill(0);
  rect(width-100,height-30,100,30);
  fill(255);
  textSize(14);
  text("New Canvas", width-90,height-10);
  
}