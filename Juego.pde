class Juego{
  
  
  PImage fon, flo, av;
  String estado;
  Pantallas pan;
  Obstaculos obs;
  Personaje per;
  Comida com;
  int i;
  
   Juego(){
   
    fon = loadImage ("lago.png");
    flo = loadImage ("flores.png");
    av = loadImage ("aviso.png");
    estado = "inicio"; 
    com = new Comida ();
    obs = new Obstaculos(); 
    per = new Personaje(); 
    pan = new Pantallas();
   }
  
  
  
  void jugar(){
    
       
     if(estado == "inicio"){
       pan.inicio();
       player.play ();
       if(keyPressed)
        estado = "nivel1";
      
     }else
       if(estado == "nivel1"){
   
          image (fon, 0, 0, 600,600);
          image (flo, 0, 0, 600, 600);
          image (av, 0, 0, 600, 600);
            com.dibujar();
            obs.dibujar();
            per.dibujar();
            
            
             if(dist(per.posX(), per.posY(),  com.posX(),com.posY()) < 30)
               com= new Comida ();
                 
            // colicion
            for(i=0; i<6; i++){
             if(dist(per.posX(), per.posY(),  obs.posX(i),obs.posY(i)) < 30)
               estado = "perdiste";
               
              }     
            
            
       } else
       
        if(estado == "perdiste"){
                       
            per = new Personaje();
            pan.perdiste (); 
            player.pause ();
        
            
            if (keyPressed)
            pan.inicio ();
              
            if (mousePressed)
            estado="inicio";
        }
    
  }
  
  
}
