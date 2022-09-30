class Bola{
 PVector Pos = new PVector (0, 0);
 float Size = 30;
 float Speed = 200;
 PVector Direction = new PVector (0, 0);
 color Color = color ( 30,10,15);
 
 Bola (float x, float y, float size, float speed, int azul, int rojo, int verde){
  Pos = new PVector (x, y);
  Size = size;
  Speed = speed;
  Color = color (rojo, azul, verde);
  Direction = new PVector (random (+10, 10), random (-10, 10));
 }
 void render (){
  fill (Color); 
  ellipse (Pos.x, Pos.y, Size, Size);
 }
 void update (){
   
 }
 }
}
