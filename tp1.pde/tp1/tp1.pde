/* Tengo un problema y es que el archivo se ejecuta correctamente, pero hay veces en que cuando se ejecuta, las teclas no cambian las imagenes.
La unica solucion que encontré hasta ahora es detener la ejecución y volver a iniciarla
*/

//creacion

PImage foto1;
PImage foto2;
PImage foto3;
PImage foto4;
PImage foto5;
PImage foto6;
int mivariable;
float colores;
PFont fuente;
PFont textos;


void setup (){
  colorMode (HSB);
  size (800,800);
  background (30, 230, 240);
  
  //asignacion 
  
  colores = random (220,250);
  foto1 = loadImage ("png1.png");
  foto2 = loadImage ("png2.png");
  foto3 = loadImage ("png3.png");
  foto4 = loadImage ("png4.png");
  foto5 = loadImage ("png5.png");
  foto6 = loadImage ("png6.png");
  fuente = loadFont ("totoro.vlw");
  textos = loadFont ("textos.vlw");
  mivariable = 8000;
}

  //uso
  
void draw (){
 
  
  
 mivariable = frameCount/2; //necesito un bucle cuando haya pasado los 2048
 println (mivariable); 
 
//pantalla 1
 if (key == '1'){
    
 background (30, colores, 240);
 image (foto1, 20, 30); 
 image (foto6, -2050+ (mivariable), 0, 2900, 800);
 
 textFont (fuente);
 
 text ("ESCRITA Y DIRIGIDA", 350, 200);
 text ("PRODUCCIÓN", 500, 350);
 
 textFont (textos);
 
 text ("Hayao Miyazaki", 425, 270);
 text ("Isao Takahata", 525, 400);
 text ("Toshio Suzuki", 525, 450);
 text ("Toru Hara", 585, 500);
 }
 //pantalla 2
  if (key == '2'){
    

 background (30, colores, 240);
 image (foto2, 300, 0);
 image (foto6, 0- (mivariable), 0, 2900, 800);
 
 textFont (fuente);

 text ("MÚSICA", 50, 200);
 text ("FOTOGRAFÍA", 50, 300);
 text ("MONTAJE", 50, 400);
 
 textFont (textos);

 text ("Joe Hisaishi", 50, 250);
 text ("Hisao Shirai", 50, 350);
 text ("Takeshi Seyama", 50, 450);
  }
  
 //pantalla 3
 
  if (key == '3'){ 
  
 background (30, colores, 240);
 image (foto3, 0, 0); 
 image (foto6, -2050+ (mivariable), 0, 2900, 800);
 

 textFont (fuente);
 
 text ("ACTORES DE VOZ", 30, 160);
 
 textFont (textos);
 
 text ("Noriko Hidaka", 30, 220);
 text ("Hitoshi Takagi", 30, 270);
 text ("Chika Sakamoto", 30, 320);
 text ("Sumi Shimamoto", 30, 370);
 text ("Naoki Tatsuta", 30, 420);
 text ("Tanie Kitabayashi", 30, 470);
 text ("Shigesato Itoi", 30, 520);
 text ("Shigeru Chiba", 30, 570);
 text ("Ikue Ōtani", 30, 620);
  }
  
 //pantalla 4 
 
  if (key == '4'){
    
 background (30, colores, 240);
 image (foto4, 0, 0); 
 image (foto6, 0- (mivariable), 0, 2900, 800);

 textFont (fuente); 
 
 text ("EFECTOS ESPECIALES", 30, 200);
 text ("DEPARTAMENTO DE MÚSICA", 30, 320);
 
 textFont (textos);
 
 text ("Kaoru Tenífují", 30, 250);
 text ("Kaiulani Kidani", 30, 370);
 text ("Kôki Miura", 30, 420); 
 text ("Eugene H. Saburi", 30, 470);
 text ("Takashi Watanabe", 30, 520);
 text ("Shin Kazuhara", 30, 570);
  }
 
//Pantalla 5
 
  if (key == '5'){
    
 background (30, colores, 240);
 
 //hice un cuadraro casi invisible para cumplir con la consigna, no entiendo bien como aplicar && en otras cosas
 
  mousePressed ();{
    fill (30,colores,240);
    stroke (30,190,240);
 rect (650,650,50,50);
  if (mouseX > 650 && mouseY > 650 && mouseX < 700 && mouseY < 700) {
    line (mouseX, mouseY, pmouseX, pmouseY);
  }
 }  
 image (foto5, 0, 0); 
 image (foto6, -2050 + (mivariable), 0, 2900, 800);
  }
 
}



      
     
