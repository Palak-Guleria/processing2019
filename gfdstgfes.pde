public class Bacteria{

  //instance variables
  float x;
  float y;
  int h;
  int w;
  float xVel;
  float yVel;

  //constructor
  public Bacteria(){
    x = random(width/2-420, width/2+420);   //left-right middle of the screen
    y = random(height/2-420, height/2+420);   //vertical middle of screen
    h=25;           //height of ball
    w=10;            //width of ball
  }
  public void show(){
    ellipse(x,y,w,w);     //draws an ellipse at x,y location, if w=h
                          //then a circle is drawn
  }

 
}
