class Obstaculos{
  
   Piedra[] obs;
   int i;

  Obstaculos(){ 
  
  obs = new Piedra[6];   
     for(i=0; i<6; i++)
      obs[i] = new Piedra();
  
    }
  
 
 
 
     void dibujar(){
            
        for(i=0; i<6; i++)
          obs[i].dibujar();
        
     }   
  
  
  
      int posX(int i){
       return obs[i].posX(); 
      }
        
  
      int posY(int i){
       return obs[i].posY(); 
      }
  
  
}
