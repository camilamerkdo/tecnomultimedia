class Piedra{
  
  int x, y,tam;
  PImage piedra;
 
  
    Piedra(){    
      x =  (int) random  (50, 500);
      y =  (int) random  (150, 500);
      tam = 80;
      piedra = loadImage( "roca.png");
      
    }   
  
  
  
    void dibujar(){
      image(piedra, x, y, tam, tam);
      
    }
  
  
  
   int posY(){
    return y; 
   } 
  
   int posX(){
    return x; 
   } 
  
  
}
