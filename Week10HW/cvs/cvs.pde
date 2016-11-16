//Enmanuel Rosario 
//DATA VIZ
//Press Mouse to show Value

float [] SuicRate;
String[] Country;

void setup() {
  size(920, 120);
  Table stats = loadTable("suira.csv", "header");
  SuicRate = new float [stats.getRowCount()];
  Country = new String [stats.getRowCount()];
  for (int i = 0; i< stats.getRowCount(); i++) {
    SuicRate[i] = stats.getFloat(i, 1);
    Country[i] = stats.getString(i, 0);
  }
}


void draw() {
  background(150);
  stroke(255, 0, 0);
  noFill();


  beginShape();

  for (int i = 0; i <SuicRate.length; i++) {

    float x = map(i, 0, SuicRate.length-1, 20, 900);
    float y = map(SuicRate[i], 0, 60, 100, 20);
    stroke(100);
    line(x, 0, x, height);
    textSize(9);
    text(Country[i], x-5, height-5);
    stroke(255, 0, 0);
    //fill(255);

    if (mousePressed) {
      text(SuicRate[i], x, y);
    } else {
      vertex(x, y);
    }
  } 
  endShape();
  //fill(0);
  textSize(12);
  text("Suicide Rate by Country", 5, 20);
}