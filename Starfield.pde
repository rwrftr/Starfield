
star alpha = new star();


void setup()
{
  
  size(1280,720); 
  
  
  
  //your code here
}

void draw()
{

 alpha.show();
  
  //your code here
}

class star
{

  int myX, myY, mySize, myC;
  star(){
  
    myX = (int)(Math.random()*(width-20))+10;
    myY = (int)(Math.random()*(height-20))+10;
    myC = color(251, 255,57,80);
    mySize = (int)(Math.random()*10)+10;
  }
 
  void show(){
  noStroke();
  fill(myC);  
  ellipse(myX,myY,mySize,mySize);
    
  
  }
  
  
  void blink(){
  
  
  
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


