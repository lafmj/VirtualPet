import processing.serial.*;
import cc.arduino.*;
Arduino arduino;


void setup () {
  size(400,400); 
  arduino = new Arduino(this, Arduino.list()[0], 57600);
}
void draw () {
  int y = arduino.analogRead(5);
  background(51);
  fill (#A32929);
  rect(200,200,300,130);
  fill (#FFFFFF);
  triangle(300,90,200,190,410,200);
  fill (#A32929);
  triangle(300,100,200,200,400,200);
  fill (#FFFFFF);
  rect(275,150,50,50);
  rect(250,230,100,100);
  fill (#A32929);
  triangle(300,200,250,250,250,350);
  fill (#8DE289);
  rect(0, 300, 400, 200);
  fill (#E76262);
  triangle (275,150,160,200,250,100);
  ellipse (262,150,25,25);
  fill (#F3BE72);
  triangle (290,150,300,75,250,100);
  rect(132, 160, 10, 140);
  quad(208,300,215,300,212,310,205,310);
  rect(214,300,4,10);
  quad(218,300,221,300,226,310,220,310);
  rect(210, 160, 10, 140);
  quad(135,300,130,300,125,310,130,310);
  rect(134,300,4,10);
  quad(138,300,143,300,146,310,140,310);
  rotate(-0.30);
  fill (#F3BE72+y*2);
  ellipse(110,150,60,170);
  rotate(0.30);
  rotate(0.18);
  fill(#C09078+y*2);
  ellipse(120,200,170,60);
  fill (#DF8A5F+y*2);
  ellipse(115,150,170,60);
  fill (#E7A062+y*2);
  ellipse(125,100,170,60);
  rotate(-0.18);
  fill (#AB8C85);
  ellipse(175,190,200,200);
  ellipse (250,75,100,100);
  fill(#FFFFFF);
  ellipse(268,65,30,30);
  fill (#F3BE72);
  ellipse(268,65,10,10);
  fill(#E76262);
  ellipse (270,125,20,10);
  if (y <= 90) {
  fill (#AB8C85);
  ellipse(268,65,30,30);
  }
  noStroke();
  
}
