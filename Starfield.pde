
star [] alpha = new star[100];


void setup()
{
  background(9, 1, 48);
  size(1280, 720); 
  //size(500,500);

  for (int i = 0; i < alpha.length; i++) { 
    alpha[i] = new star();
  }

  //your code here
}

void mouseClicked() {

  setup();
  draw();
  //print("yea");
}

void draw()
{



  for (int i = 0; i < alpha.length; i++) { 
    alpha[i].show(30);
  } 


  //your code here
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

    //this was meant to stop the dots from going in the same spot but now it just does some other stuff which is cool
    /*
    for (int i = 0; i < alpha.length; i++) {
     for (int s = 0; s < alpha.length; s++) {
     
     if ((alpha[i].myX == alpha[s].myX)) {
     alpha[i].myX = (int)(Math.random()*(1260))+10;
     }
     if ((alpha[i].myY== alpha[s].myY)) {
     alpha[i].myY = (int)(Math.random()*(700))+10;
     }
     }
     }
     */
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

  int PX, PY, PSize, PC, PA;

  Particle() {

    PX = (int)(Math.random()*(1260))+10;
    PY = (int)(Math.random()*(700))+10;
    PC = color(251, 255, 57, 80);
    PSize = (int)(Math.random()*5)+5; 
    //PA = (2*Math.PI());
  }

  //your code here
}

class OddballParticle //inherits from Particle
{
  //your code here
}
