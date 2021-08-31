import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

int y = 350;
int direction = -1;
float cx = 150;
float cy = 200;
int r = 100;
int ry = 100;
float t = 0;
void setup(){
  size(400,400);
  arduino = new Arduino(this, Arduino.list()[2], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

void draw(){

  //arduino
  int at = arduino.analogRead(5);
  System.out.println(at);
  background(150);
  //body
  line(200,200,200,400);
  //head
  ellipse(200,200,50,90);
  //left arm
  line(200,300,100,y);
  //right arm
  //line(200,300,300,350);
  
  //linear motion
  y = y + direction;
  if (at < 50){
    direction = 1;
  }
  if( at > 50){
    direction = -1;
  }
  //limits
  line(0,200,400,200);
  line(0,300,400,300);
  
  //trig for circular motion
  cx = 200 + abs(r*cos(at));
  cy = 300 + ry*sin(at);
    if(cy >300){
      cy = 300 + -ry*sin(at);
  }
  //ellipse(cx,cy,10,10);
  line(200,300,cx,cy);
  t = t + 0.1;
  System.out.print(cx);
  System.out.println(" " + cy);

}
