//https://youtu.be/QacaUpJACTA

int filas = 40;
int columnas = 40;
int booba = 20;

PImage foto2;
PImage foto3;
PImage foto4;

ArrayList <Integer> posX = new ArrayList <Integer>();
ArrayList <Integer> posY = new ArrayList <Integer>();

int direccion = 1;
int [] dx = {0, 0, -1, 1};
int [] dy = {-1, 1, 0, 0};

int manzanaX;
int manzanaY;

boolean Perdedor = true;

void setup (){
  
  size (600, 600);

  posX.add (10);
  posY.add (10);

  foto2 = loadImage ("png9.png");
  foto3 = loadImage ("png11.png");
  foto4 = loadImage ("png12.png");

frameRate (10);

manzanaX = (int) random (0, 30);
manzanaY = (int) random (0, 30);

}

void draw (){
  
  background (170, 204, 203);
  image (foto3, 0, 0);
  
 if (Perdedor == true){
   fill (242, 228, 199);
   rect ( -5, -5, 610, 610);
   image (foto2, 0, -30);
   image (foto4, 0, 0);
   manzanaX = -1;
   manzanaY = -1;
   posX.clear ();
   posY.clear ();
   posX.add (-10);
   posY.add (-10);

 }else{
   stroke (244);
   for (int i = 0; i <filas; i++){
     line (0, i*booba, width, i*booba);
   }
   for (int j = 0; j < columnas; j++){
     line (j*booba, 0, j*booba,height);
   }
 }

  
  limites ();
  yo ();
  mover ();
  comer ();
  manzana ();
  gusano ();
}
void limites (){
 if ((posX.get(0) < 0) || (posX.get(0) > columnas -1) || (posY.get (0) < 0) || (posY.get(0) > filas +1)){
   Perdedor = true;
 }
}


void comer (){
if ((posX.get (0) == manzanaX) && (posY.get (0) == manzanaY)){
  manzanaX = (int) random (0, 30);
  manzanaY = (int) random (0, 30);
  posX.add (posX.get (posX.size ()-1));
  posY.add (posY.get (posY.size ()-1));
 }
  
}
void mover (){
 posX.add (0, posX.get (0) + dx [direccion]); 
 posY.add (0, posY.get (0) + dy [direccion]); 
 posX.remove (posX.size () -1);
 posY.remove (posY.size ()-1);
}
void gusano (){
  fill (34, 139, 34);
  for (int i = 0; i < posX.size(); i++){
    ellipse (posX.get(i)*booba, posY.get(i)*booba, booba, booba);
  }
}
void manzana(){
 fill (241, 21, 36);
 ellipse (manzanaX * booba, manzanaY * booba, booba, booba);
}
void reinicio (){
 Perdedor = false;
 posX.clear ();
 posY.clear (); 
 posX.add (10);
 posY.add (10);
 manzanaX = (int) random (0, 30);
 manzanaY = (int) random (0, 30);
}
void yo (){
  for (int i = 3; i < posX.size (); i++){
    for (int j = 3; j < posY.size (); j++){
      if ((posX.get (0) == posX.get (i)) && (posY.get (0) == posY.get (i))){
        Perdedor = true;
      }
    }
  }
}

void keyPressed (){
 
if (key == '8' || keyCode == UP) direccion = 0;
if (key == '2' || keyCode == DOWN) direccion = 1;
if (key == '4' || keyCode == LEFT) direccion = 2;
if (key == '6' || keyCode == RIGHT) direccion = 3;
if (key == ' ' ){
  reinicio ();
}
}
