class Personaje{
   
  int x, y, tam;
  PImage rana; 
  
   Personaje(){
     
    x = 300;
    y = 300;
    tam = 80; 
     rana = loadImage( "personajerana.png"); 
   }
  
  
  
     void dibujar(){
       mover();
       
      image(rana, x, y, tam, tam);      
      
      
    }
    
    void mover(){
    
      if (( keyCode== UP))
      y = y - 7;
      
      if ((keyCode== DOWN))
      y = y + 7;
                
      if((keyCode== LEFT))
      x = x - 7; 
      
      if((keyCode== RIGHT) )
      x = x + 7; 
      
      
      //----------------------------------
      
      if ( x > width)
      x = -35;
      
      if ( x < -35)
      x = width;
      
      if ( y > height)
      y = -35;
      
      if ( y < -35)
      y = height;

    
    }
    
    
    
  
   int posY(){
    return y; 
   } 
  
    int posX(){
    return x; 
   }  
}
