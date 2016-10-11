color bc, bs, ec;
Boolean loop;


void setup() {
  size(800, 600);
  loop = true;
}

void draw() {
  
    float x = width/2;
    float y = height/2;
    color eC, bColor, bShadow;
    for (int i = 0; i<500; i++) {
      x = x +(random(-400, 400));
      y = y +(random(-400, 400));
      eC = Col();
      bColor = Col();
      bShadow = Col();
      robot(x, y, eC, bColor, bShadow);
      
   
  }
}

void robot(float x, float y, color eC, color bColor, color bShadow) {
  //background(255);
  //Body
  noStroke();
  fill(bShadow); //Shadow
  ellipse(x-10, y-150, 200, 200);
  rect(x-110, y-150, 200, 200);
  fill(bColor); //BodyColor
  //rect(x-20, y-280, 40,60);
  ellipse(x, y-150, 200, 200);
  rect(x-100, y-150, 200, 200);
  //stroke(0);
  //ellipse(x, y-250,40,10);
  //ellipse(x, y-280,60,20);
  //noStroke();
  //rect(x-20, y-265, 40,15);


  //Eyes
  fill(#9CF6FA); 
  rect(x-80, y-150, 160, 40);
  triangle(x-80, y-111, x+80, y-111, x, y-90);
  rect(x-20, y-100, 40, 60);
  fill(0);

  ellipse(x-40, y-125, 30, 30); // Left Eye
  fill(eC);
  ellipse(x-35, y-125, 20, 20); // Iris
  fill(0);
  ellipse(x+40, y-125, 30, 30); // Right Eye
  fill(eC);
  ellipse(x+45, y-125, 20, 20); // Iris

  //Mouth
  noStroke();
  //stroke(100, 20, 20);

  fill(bColor); //Body

  rect(x-80, y-20, 160, 70); 

  fill(195);
  rect(x-70, y-20, 140, 60); 

  fill(155);
  rect(x-70, y-20, 130, 60); 


  fill(bShadow); //Shadow
  for (int i = 0; i< 100; i+=20) {
    triangle(x-30+i, y-20, x-50+i, y-20, x-40+i, y+5);
  }

  for (int i = 0; i< 100; i+=20) {
    triangle(x-30+i, y+40, x-50+i, y+40, x-40+i, y+10);
  }
}

color Col() {
  int a = (int)random(255);
  int b = (int)random(255);
  int c = (int)random(255);
  color col = color(a, b, c);
  return col;
}
