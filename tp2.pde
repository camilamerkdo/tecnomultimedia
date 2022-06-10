int cant = 50;
int tam;
float c;

void setup (){
  
  size (600, 600);
  tam = width/cant;
  c = random (100,110);
}


void draw (){
  background (255, 138, 128);
  circulo ();
  for (int i=0; i<cant; i++){
    for (int j=0; j<cant; j+=1){
      float dis = dist (mouseX, mouseY, i*tam, j*tam); 
      float dia = dist (30, 0, width/2, height/2); 
      float an = map (dis, 250, dia, tam/2, tam); 
      float relleno = map (dis, 50, dia, 255, 20);  
      fill (200, relleno, 0);
      ellipse (i*tam+tam/2, j*tam+tam/2, an, an);
         }
       }     
if (keyPressed){
    {
    if (key =='f')
    {
       mouseX = 0;
       mouseY = 0;
       stroke (3);
     }
     if (key =='a')
    {
       mouseX = 0;
       mouseY = 0;
       noStroke ();
     }
  
   }  
}            
}
 void circulo (){
   fill(244,120,15);
   ellipse (300,300,100,c);
   fill(244,140,15);
   ellipse (300,300,50,50);
 }
