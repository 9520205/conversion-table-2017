void setup() {
  size(1000,600);
}

void draw() {
  background(100);
  drawRef();
  textSize(28);
  text("Imperial to Metric converter",310,40);
  textSize(12);
  text("Alex Shepherd",458,70);
  text("This table is used to convert from three common imperial measurements to two metric measurements. You drag the bars from left to right to change the values.",30,120);
  line(1000,155,0,155);
  text("inches: " + mouseX/40,10,195);
  text("centimeters: " + iConverter(mouseX),100,195);
  rect(0,220,mouseX,22);
  println(iConverter(120.0));
  
  text("feet: " + mouseX/10,10,325);
  text("meters: " + fConverter(mouseX),100,325);
  rect(0,350,mouseX,22);
  println(fConverter(120.0));
  
  text("yards: " + mouseX/33,10,455);
  text("meters: " + yConverter(mouseX),100,455);
  rect(0,480,mouseX,22);
  println(yConverter(120.0));
}

void drawRef() {
  stroke(255);
  line(0,245,width,245);
  for(int i=0; i<width; i+=40){
  textSize(8);
  text(i/40,i-5,267);
  line(i,220,i,255);
  }
  line(0,375,width,375);
  for(int i=0; i<width; i+=50){
  textSize(8);
  text(i/10,i-5,397);
  line(i,350,i,385);
  }
  line(0,505,width,505);
  for(int i=0; i<width; i+=33){
  textSize(8);
  text(i/33,i-5,527);
  line(i,480,i,515);
  }
}
float iConverter(float val) {
  val = (val * 2.54)/40;
  return val;
}

float fConverter(float val) {
  val = (val*.3048)/10;
  return val;
}

float yConverter(float val) {
  val = (val*.9144)/33;
  return val;
}