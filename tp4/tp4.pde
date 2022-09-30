Timer startTimer;
Button resetbutton;

void setup (){
  size (600, 600);
   startTimer = new Timer (10);
   resetbutton = new Button (100, 100, 100, 50, "Reset", 0, 200, 200);
}

void draw (){
  background (200);
  startTimer.countUp();
  fill (0);
  text (startTimer.getTime(), 20, 20);
  
  if (resetbutton.isClick()){
    startTimer.setTime (10);
  }
  
  resetbutton.actualizar ();
  resetbutton.render ();
}
  
