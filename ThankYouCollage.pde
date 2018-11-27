//add modern art code here
PImage imgball;
PImage imgload;
PImage imgdvd;
PImage imgstat;
float dvdX;
float dvdY;
float speed;
float speed2;
float lineX;
float linespeed;
void setup()
{
  size(800, 600);
  imgball=loadImage("beachball.png");
  imgload=loadImage("loading.png");
  imgdvd=loadImage("dvdbounce.png");
  imgstat=loadImage("static.gif");
  dvdX=2;
  dvdY=2;
  speed=+2;
  speed2=2;
  linespeed=1;
} 

void draw() {
  background(random(100, 130));
  dvdX=dvdX+speed2;
  dvdY=dvdY+speed;
  lineX=lineX+linespeed;
  textSize(40);
  fill(0);
  text("thanks to all my parents and guardians!", 20, 300);
  image(imgball, mouseX-20, mouseY-20, 50, 50);
  image(imgload, 50, 470, 200, 200);
  image(imgdvd, dvdX, dvdY, 150, 150);
  strokeWeight(10);
  line(lineX, 550, lineX, 525);
  if (dvdX>650) {
    speed2=-2;
  }

  if (dvdY>450) {
    speed=-2;
  }

  if (dvdY<0) {
    speed=+2;
  }

  if (dvdX<0) {
    speed2=+2;
  }

  if (lineX>245) {
    linespeed=-1;
  }

  if (lineX<105) {
    linespeed=1;
  }
}
