//Week 3 Homework
//Drawing Program

boolean canDraw = false;
boolean Box, triangle, sphere, pen;
int toolList = 0;
color[] colarray = {
color(129,43,90),
color(119,204,170),
color(111,136,165),
color(147,126,136),
color(226,70,29),
color(139,123,139),
color(186,95,74),
color(0,0,255),
color(16,255,0),
color(253,226,62)}; //42
int colorSelect = 0;

void setup(){
  size(1600, 900);
  
  
}

void draw(){
  
  interf();
  colorPicker();
  controllers();
  
  toolbox();
  toolBoxSel();
}
