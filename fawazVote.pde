PImage img;

final int xVal=20;
final int yVal=30;

float xPos=0, yPos=10, xSpeed=2.8, ySpeed=2.8;
float imgX=100,imgY=150;

boolean moveRight=true;
boolean moveDown=false;
boolean imgRight=false;
boolean imgDown=false;

String text[]={"VOTE", "FAWAZ", "FOR", "EVENTS", "EXEC"};

void setup() {  
  size(700, 400);
  textSize(30);

 
}

void draw() {
  frameRate(60);
  background(0);
  img = loadImage("download.png");
  

  if (moveRight) {
    xPos+=xSpeed;
  } else {
    xPos-=xSpeed;
  }

if (imgRight) {
    imgX+=xSpeed;
  } else {
     imgX-=xSpeed;
  }


  if (moveDown) {
    yPos+=ySpeed;   
  } else {
    yPos-=ySpeed;
  }
  
  if (imgDown) {
    imgY+=ySpeed;
  } else {
     imgY-=ySpeed;
  }
  

  if (xPos<0||xPos>width-180) {
    moveRight=!moveRight;
     fill(random(100,255), random(100,255), random(100,255));
  }
  
   if (imgX<0||imgX>width-100) {
    imgRight=!imgRight;
  }
  if (yPos<0|| yPos>height-180) {
    moveDown=!moveDown;
    fill(random(100,255), random(100,255), random(100,255));
  }
  if (imgY<0|| imgY>height-100) {
    imgDown=!imgDown;
  }
  image(img,imgX,imgY,100,100);
  for (int i=0; i<=4; i++) {
    text(text[i], xPos+xVal*i+10, yPos+yVal*i+40);
  }
}
