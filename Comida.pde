class Comida {
int x, y,tam;
PImage comida;
 
  
    Comida(){  
      x =  (int) random  (50, 500);
      y =  (int) random  (150, 500);
      tam = 50;
      comida = loadImage ("comida.png");
      
    }   
  
  
  
    void dibujar(){
      image(comida, x, y, tam, tam);
      
    }
  
  
  
   int posY(){
    return y; 
   } 
  
   int posX(){
    return x; 
   } 
  
  



}
