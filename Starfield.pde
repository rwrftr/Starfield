
star alpha;


void setup()
{
  alpha = new star();
  background(9, 1, 48);
  size(1280, 720); 
  //size(500,500);


  //your code here
}

void mouseClicked() {

 setup();
 draw();
 //print("yea");
 
 
   }

  void draw()
  {

    /*for(int i = 0; i <= 100; i++){
     
     alpha.show(i); 
     background(9, 1, 48);
     }
     */

    alpha.show(30);

    //your code here
  }

  class star
  {

    int myX, myY, mySize, myC;
    star() {

      myX = (int)(Math.random()*(1260))+10;
      myY = (int)(Math.random()*(700))+10;
      myC = color(251, 255, 57, 80);
      mySize = (int)(Math.random()*10)+10;
    }

    void show(int p) {
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
    //your code here
  }

  class OddballParticle //inherits from Particle
  {
    //your code here
  }
