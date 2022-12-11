class Pantallas{
  
  PImage ini, per;
  
  Pantallas(){
    
     ini = loadImage( "inicio.png");  
     per = loadImage("perdiste.png");
     
  }
  
  
  
    void inicio(){
   
      image(ini, 0, 0, 600, 600);   
    }
  
  
      void perdiste(){
      image(per, 0, 0, 600, 600);   
    }
   
}
