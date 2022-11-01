
star [] alpha = new star[100];

Particle [] stuff = new Particle[50];

Particle test = new Particle();

void setup()
{
  background(9, 1, 48);
  size(1280, 720); 
  //size(500,500);

  for (int i = 0; i < 10; i++) { 
    stuff[i] = new OddballParticle();
  }

  for (int i = 10; i < stuff.length; i++) { 
    stuff[i] = new Particle();
  }

  for (int i = 0; i < alpha.length; i++) { 
    alpha[i] = new star();
  }
  //your code here
}

void mouseClicked() {
  //setup();

 if (mouseButton == LEFT) {
  
  for (int i = 0; i < stuff.length; i++) { 
    stuff[i].PSpeed = stuff[i].PSpeed + Math.random()*5;
    stuff[i].PSpeed = stuff[i].PSpeed + Math.random()*5;
  }
 }
 
 if (mouseButton == RIGHT) {for (int i = 0; i < stuff.length; i++) { 
    stuff[i].PSpeed = stuff[i].PSpeed /2;
    stuff[i].PSpeed = stuff[i].PSpeed /2;
  }}
 
}

void draw()
{
  background(9, 1, 48);
  for (int i = 0; i < alpha.length; i++) { 
    alpha[i].show(30);
  }
  
  for (int i = 0; i < stuff.length; i++) { 
    stuff[i].move();
    stuff[i].show();
  }

  //test.move();
  //test.show();
}

class star
{
  int myX, myY, mySize, myC;
  star() {

    myX = (int)(Math.random()*(1260))+10;
    myY = (int)(Math.random()*(700))+10;
    myC = color(251, 255, 57, 80);
    mySize = (int)(Math.random()*5)+5;
  }

  void show(int p) {
    for (int i = 0; i < alpha.length; i++) {
      for (int s = i+1; s < alpha.length-1; s++) {

        if ((alpha[i].myX == alpha[s].myX) && (alpha[i].myY == alpha[s].myY) ) {
          alpha[i].myX = (int)(Math.random()*(1260))+10;
          alpha[i].myY = (int)(Math.random()*(700))+10;
        }
      }
    }

    noStroke();
    myC = color(251, 255, 57, p);
    fill(myC);  
    ellipse(myX, myY, mySize, mySize);
  }

  void blink() {
  }
}

class Particle
{
  int PSize, PC;

  double PAngle, PSpeed, PX, PY;

  Particle() {
    PX = (int)(Math.random()*(1260))+10;
    PY = (int)(Math.random()*(700))+10;
    PC = color(251, 255, 57);
    PSize = (int)(Math.random()*5)+5; 
    PAngle = Math.random()*2*Math.PI;
    PSpeed = Math.random()*5;
  }

  void move() {

    PX = PX + Math.cos(PAngle) * PSpeed;
    PY = PY + Math.sin(PAngle) * PSpeed;

    if (PX < 0) {
      PX = 1280;
    }
    if (PX > 1280) {
      PX = 0;
    }
    if (PY < 0) {
      PY = 720;
    }
    if (PY > 720) {
      PY = 0;
    }
  }

  void show() {
    fill(PC);
    ellipse((float)PX, (float)PY, PSize, PSize);
  }
}
class OddballParticle extends Particle
{

  double theta = 0;
  
  OddballParticle() {

    PX = (int)(Math.random()*(1260))+10;
    PY = (int)(Math.random()*(700))+10;
    PC = color(251, 255, 57);
    PSize = (int)(Math.random()*5)+5; 
    PAngle = Math.random()*2*Math.PI;
    PSpeed = Math.random()*5;
    theta =  Math.random()*2*Math.PI;
  }

  void show() {

    fill(142,94,36);
    ellipse((float)PX, (float)PY, PSize, PSize);

    fill(255);
    ellipse((float)PX+ (float)(Math.cos(theta)* 20   ), (float)PY + (float)(Math.sin(theta)* 20   ), PSize, PSize);
  }

  void move() {

    theta += 0.1;
    if(theta >= (2 * Math.PI)){theta = 0;}
    PX = PX + Math.cos(PAngle) * PSpeed;
    PY = PY + Math.sin(PAngle) * PSpeed;
    
     if (PX < 0) {
      PX = 1280;
    }
    if (PX > 1280) {
      PX = 0;
    }
    if (PY < 0) {
      PY = 720;
    }
    if (PY > 720) {
      PY = 0;
    }
    
  }
}
