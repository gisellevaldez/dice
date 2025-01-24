int value;
int total;

 void setup()
  {
      noLoop();
      size(600,600);
  }
  
  void draw()
  {
 background(240, 213, 242);

 
               
      for(int x = 50; x<600; x +=200)
      {
        for(int y = 50; y<600; y +=200)
        {
          Die sigma= new Die (x,y);
          sigma.roll();
          sigma.show();
          total += value;
        }
        
      }
      textSize(30);
      text("total: " + total, 350, 500);
      total =0;
     // System.out.println(total);
 
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int xPose;
      int yPose;
     // int  value;
      
      
      Die(int x, int y) //constructor
      {
          //variable initializations here
          xPose = x;
          yPose=y;
          value=0;
      }
      void roll()
      {
          //your code here
          value = (int) (Math.random()*6 + 1);
      }
      void show()
      {
      fill(255);
      rect(xPose,yPose,100,100,10);
      fill(0);
 if(value == 1)
 {
      ellipse(xPose + 50, yPose + 50 ,20,20);
      }
 else if(value == 2)
 {
   ellipse(xPose + 25, yPose + 25 ,20,20);
   ellipse(xPose + 75, yPose + 75 ,20,20);
 }
 else if(value == 3)
 {
   ellipse(xPose + 25, yPose + 25, 20,20);
   ellipse(xPose + 50 ,yPose + 50,20,20);
    ellipse(xPose + 75, yPose + 75 ,20,20);
 }
 else if(value == 4)
 {
   
 ellipse(xPose + 25, yPose + 25 ,20,20);
ellipse(xPose + 75 ,yPose + 25 ,20,20);
ellipse(xPose + 25 ,yPose + 75,20,20);
ellipse(xPose + 75 ,yPose + 75,20,20);
 }
 else if (value == 5)
 {
 ellipse(xPose + 25, yPose + 25 ,20,20);
ellipse(xPose + 75 ,yPose + 25 ,20,20);
ellipse(xPose + 25 ,yPose + 75,20,20);
ellipse(xPose + 75 ,yPose + 75,20,20);
  ellipse(xPose + 50, yPose + 50 ,20,20);
 }
 else if (value == 6) 
 {
ellipse(xPose + 25, yPose + 25 ,20,20);
ellipse(xPose + 75 ,yPose + 25 ,20,20);
ellipse(xPose + 25 ,yPose + 75,20,20);
ellipse(xPose + 75 ,yPose + 75,20,20);
ellipse(xPose + 50 ,yPose + 75,20,20);
ellipse(xPose + 50 ,yPose + 25,20,20);
 }
  }}

  
