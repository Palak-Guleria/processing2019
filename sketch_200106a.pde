Bacteria b;
float xxx;
int timeSpent;
Bacteria[] bacteriaArray;
Button[] buttonArray;
String msg;
boolean clicked;

public void setup(){
  size(2000, 1000);
  bacteriaArray = new Bacteria[timeSpent];
  makeBack();
  msg = "";
  clicked = false;
  buttonArray = new Button[10];
  
  for(int i = 0; i < 10; i ++){
    msg = "";
    msg = i + " hours";
    Button bbb = new Button();
    if(i%2 == 0){
      bbb.coords(100, 125+(i)*75);
      text(msg, 100, 150+(i)*75);
    }
    else{
      bbb.coords(300, 125+(i-1)*75);
      color(100,0, 100);
      text(msg, 300, 125+(i-1)*75);

    }
    buttonArray[i] = bbb;
  }
  
  for(int i = 0; i < timeSpent; i ++){
    Bacteria bb = new Bacteria();
    
    bacteriaArray[i] = bb;
  }
 
  
}

void draw(){
  makeBack();
  for(int k = 0; k < 10; k++){
    msg = "";
    msg = k + " hours";
    if( k%2 == 0){
      text(msg, 100, 125+(k)*75);
    }
    else{
      color(100,0, 100);
      text(msg, 300, 125+(k-1)*75);
    }
  }
  for(int i = 0; i < timeSpent; i++){
    bacteriaArray[i].show();
  }
  for(int i = 0; i < 10; i++){
    buttonArray[i].show();
    if(buttonArray[i].mousePressed() && clicked){
      System.out.println(i);
      updateTime(i+2);
      clicked = false;  
      for(int j = buttonArray.length; j > 0; j--){
        buttonArray[i] = null;
      }
      setup();
    }
  }
  
  
}
void mouseClicked(){
  if(clicked == false){
    clicked = true;
  }
}

public void makeBack(){
   background(100);
   fill(10,100,100);
   stroke(204, 102, 0);
   rect(550, 50, 900, 900);
   fill(48, 255, 33);
   ellipse(100, 100, 20, 20);
   text("- bacteria", 120, 105);
   ellipse(width/2, height/2, 10, 10);
   text("here is a bacteria simulator! press the buttons and see how bacteria multiplies over time! made by palak guleria and diksha majumdar :))", 40, 20);
}


public void updateTime(int i){
  int b = 4;
  int e = i+ 1;
  timeSpent = (int)Math.pow(e, b);

}
