public class Button{
  int rectX, rectY;      // Position of square button
  int rectSize = 90;     // Diameter of rect
  color rectColor,  baseColor;
  color rectHighlight;
  color currentColor;
  boolean rectOver = false;
  
  public Button() {
    rectColor = color(0);
    rectHighlight = color(51);
    baseColor = color(102);
    currentColor = baseColor;
    rectX = width/2-rectSize-10;
    rectY = height/2-rectSize/2;
    
  }
  
  public void show(){
    update();    
    if (rectOver) {
      fill(rectHighlight);
    } else {
      fill(rectColor);
    }
    stroke(255);
    rect(rectX, rectY, rectSize+50, rectSize); 
  
  }
  
  public void update(){
    if ( overRect(rectX, rectY, rectSize+50, rectSize) ) {
      rectOver = true;
    } else {
      rectOver = false;
    }
  }
  
  public boolean mousePressed() {
    if (rectOver) {
      return true;
    }
      return false;
  }
  
  public boolean overRect(int x, int y, int width, int height)  {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) {
      return true;
    } else {
      return false;
    }
  }
  public void coords(int x, int y){
    rectX = x;
    rectY = y;
    
  }



}
