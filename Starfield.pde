
star [] alpha = new star[100];

Particle [] stuff = new Particle[100];

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
  
for (int i = 0; i < alpha.length; i++) { 
    stuff[i].PSpeed = Math.random()*5;
    stuff[i].PSpeed = Math.random()*5;
  }  
}

void draw()
{
  background(9, 1, 48);
  for (int i = 0; i < alpha.length; i++) { 
    alpha[i].show(30);
    stuff[i].move();
    stuff[i].show();
  }
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
  }

  void show(){

    ellipse((float)PX, (float)PY, PSize, PSize);
  }
}
  class OddballParticle extends Particle
  {
    
    OddballParticle(){
    
    PX = (int)(Math.random()*(1260))+10;
    PY = (int)(Math.random()*(700))+10;
    PC = color(251, 255, 57);
    PSize = (int)(Math.random()*5)+5; 
    PAngle = Math.random()*2*Math.PI;
    PSpeed = Math.random()*5;
    
    }
    
    void show(){

    ellipse((float)PX, (float)PY, PSize, PSize);
  }
   
    void move() {

    PX = PX + Math.cos(PAngle) * PSpeed;
    PY = PY + Math.sin(PAngle) * PSpeed;
  }
    
  }
