//Processing week 4 homework
//Robot
float StartX;
float StartY;
float N  = .2;

PImage nuky;

int mov = 0;

void setup() {

  size(600, 800);
  background(127, 127, 127); //Gray Background
  ellipseMode(RADIUS);
  strokeWeight(0);
  nuky =loadImage("nuke.png");

  StartX = width/2;
  StartY = 100;
}

void draw() {
  
  //bg();
  
  BGround();
  //background(255);
  scale(N);
  StartX = width/(2*N);
  strokeWeight(1/N);
  robot();
  N +=0.001;
  StartY+=1;
  StartX*=N;
  
  println(N);
  if(N > 1) {
    N=1;
    image(nuky, 0, 0, 600, 800);
  }
}

void BGround(){
  fill(155);
  scale(1);
  background(255);
  fill(#A8BFB8);
  quad(350, 100, width, 100, width, height, width-50, height );
  triangle(400, 130, width, 130,  width, height-200);
  rect(400,0, width-400, 130);
  
  quad(250, 100, 0, 100, 0, height, 50, height );
  
}


void robot() {

  //hair
  fill(0);
  ellipse(StartX, StartY, 60, 80);

  //BackSides

  fill(#39B24E);
  rect(StartX-30, StartY-25, 60, 50); //head


  //rect(StartX-100,StartY+45, 200, 50); //UpperSide
  //Upperside updated

  rect(StartX-100, StartY+45, 65, 30);
  rect(StartX+35, StartY+45, 65, 30);

  rect(StartX-25, StartY+55, 50, 30);
  beginShape(); 
  vertex(StartX-35, StartY+45);    
  vertex(StartX-25, StartY+55);
  vertex(StartX-25, StartY+80); 
  vertex(StartX-35, StartY+80);
  endShape(CLOSE);

  beginShape(); 
  vertex(StartX+35, StartY+45);    
  vertex(StartX+25, StartY+55);
  vertex(StartX+25, StartY+80); 
  vertex(StartX+35, StartY+80);
  endShape(CLOSE);





  beginShape(); //Right Leg
  vertex(StartX+45, StartY+205);
  vertex(StartX+45, StartY+475);
  vertex(StartX+20, StartY+500);
  vertex(StartX+15, StartY+225); 
  endShape(CLOSE);
  


  beginShape(); //Left Leg
  vertex(StartX-45, StartY+205);
  vertex(StartX-45, StartY+475);
  vertex(StartX-20, StartY+500);
  vertex(StartX-15, StartY+225); 
  endShape(CLOSE);

  //head


  fill(#4BF067);
  rect(StartX-30, StartY, 60, 50);

  fill(#62E4E8);
  rect(StartX-30, StartY+20, 60, 10);

  //neck
  fill(#4BF067);
  rect(StartX-10, StartY+50, 20, 20);

  //UpperBody

  beginShape();
  vertex(StartX-100, StartY+70);

  vertex(StartX-35, StartY+70);
  vertex(StartX-25, StartY+80);
  vertex(StartX+25, StartY+80);
  vertex(StartX+35, StartY+70);

  vertex(StartX+100, StartY+70);
  vertex(StartX+100, StartY+110);
  vertex(StartX+40, StartY+110);
  vertex(StartX+30, StartY+120);
  vertex(StartX+30, StartY+240);
  vertex(StartX, StartY+260);

  vertex(StartX-30, StartY+240);
  vertex(StartX-30, StartY+120);
  vertex(StartX-40, StartY+110);
  vertex(StartX-100, StartY+110);
  vertex(StartX-100, StartY+70);

  endShape(CLOSE);

  //Left Arm

  rect(StartX-90, StartY+110, 30, 120);

  //right Arm

  rect(StartX+60, StartY+110, 30, 120);

   wheel();
  
  //Left Leg
  fill(#4BF067);
  beginShape();
  vertex(StartX+45, StartY+230); //50
  vertex(StartX+45, StartY+500);
  vertex(StartX+20, StartY+500);
  vertex(StartX+15, StartY+250); 
  
 
 

  endShape(CLOSE);

  //Right Leg
  beginShape();
  vertex(StartX-45, StartY+230); //50
  vertex(StartX-45, StartY+500);
  vertex(StartX-20, StartY+500);
  vertex(StartX-15, StartY+250); 

  endShape(CLOSE);
  
  
  //rect(StartX+20,StartY+300, 25,200); 

  //leg Shadow
  fill(#39B24E);
  rect(StartX+20, StartY+460, 25, 20);
  rect(StartX-45, StartY+460, 25, 20);

  //Extra Stuff
  beginShape();
  fill(#62E4E8);
  vertex(StartX+40, StartY+90);
  vertex(StartX, StartY+130);
  vertex(StartX-40, StartY+90);
  
  

  endShape(CLOSE);

  rect(StartX-80, StartY+110, 10, 120); //left arm

  rect(StartX+70, StartY+110, 10, 120); //Right arm

  //Black Lines
  fill(0);
  rect(StartX-100, StartY+45, 10, 65); //Left Side

  rect(StartX+90, StartY+45, 10, 65); // Right Side

  rect(StartX-5, StartY-25, 10, 20); //Head

  rect(StartX+20, StartY+460, 5, 40); //Legs Right

  rect(StartX-25, StartY+460, 5, 40); //Legs Left
}


void bg() {

  //bg
  fill(#62E4E8);
  //ellipse(StartX+100, StartY+300, 300,300);

  for (int y = 0; y<=height; y+=40) {
    for (int x = 0; x<+width; x+=40) {
      rect(x, y, 20, 20);
    }
  }

  for (int y = 20; y<=height; y+=40) {
    for (int x = 20; x<+width; x+=40) {
      rect(x, y, 20, 20);
    }
  }
  strokeWeight(2);
}


void wheel() {
  rect(StartX-90, StartY+285,180, 210);
  fill(0);
  if (mov < 3) {

    fill(155);
    
    rect(StartX-90, StartY+285+(mov*20),180, 10);
    
    rect(StartX-90, StartY+305+(mov*20),180, 10);

    rect(StartX-90, StartY+325+(mov*20),180, 10);

    rect(StartX-90, StartY+345+(mov*20),180, 10);
    
    rect(StartX-90, StartY+385+(mov*20),180, 10);
    
    rect(StartX-90, StartY+425+(mov*20),180, 10);
    
    mov+=1;
  } else {

     mov =0;
  }
}