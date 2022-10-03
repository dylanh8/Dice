Dice james;
  void setup(){
    noLoop();
    size(700, 700);
    james=new Dice(0, 0);
   
  }
 
 
  void draw(){
   background(0);
   
   
  for(int v=0; v<700; v+=101){
    for(int u=0; u<700; u+=101){
    Dice jeff = new Dice(u, v);
    jeff.roll();
    jeff.show();
   
  }
  }
  }

 
 void mousePressed(){
   redraw();
 }






  class Dice{
    //member variables
    int x1, y1, side;
   
   //constructor AKA fancy initializer
    Dice(int x, int y){
      side=1;
      x1=x;
      y1=y;

    }
   
   
   //member functions
    void roll(){
      side= (int)(Math.random()*7);
     
    }
   
    void show(){
     
      int r=(int)(Math.random()*100);
      int g=(int)(Math.random()*100);
      int b=(int)(Math.random()*100);
     
     
           fill(r, g, b);
      rect(x1, y1, 100, 100);
     
      fill(255, 255, 255);
     if(side==1){
       
     ellipse(x1+50, y1+50, 15, 15);
     }
     else if(side==2){
       
        ellipse(x1+33, y1+33, 15, 15);
        ellipse(x1+66, y1+66, 15, 15);
       
     }
      else if(side==3){
       
       ellipse(x1+25, y1+25, 15, 15);
       ellipse(x1+50, y1+50, 15, 15);
       ellipse(x1+75, y1+75, 15, 15);
       
       
     }
       else if(side==4){
         
           ellipse(x1+33, y1+33, 15, 15);
           ellipse(x1+66, y1+33, 15, 15);
           ellipse(x1+33, y1+66, 15, 15);
           ellipse(x1+66, y1+66, 15, 15);
       
     }
       else if(side==5){
         
         ellipse(x1+33, y1+33, 15, 15);
         ellipse(x1+66, y1+33, 15, 15);
         ellipse(x1+50, y1+50, 15, 15);
         ellipse(x1+33, y1+66, 15, 15);
         ellipse(x1+66, y1+66, 15, 15);
       
     }
      else{
       
        ellipse(x1+33, y1+25, 15, 15);
        ellipse(x1+33, y1+50, 15, 15);
        ellipse(x1+33, y1+75, 15, 15);
        ellipse(x1+66, y1+25, 15, 15);
        ellipse(x1+66, y1+50, 15, 15);
        ellipse(x1+66, y1+75, 15, 15);
       
      }
     
     
    }
         
     
         
         
     
   
  }// end  class

 
