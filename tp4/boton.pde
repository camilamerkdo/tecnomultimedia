class Button{
  PVector Pos = new PVector (0,0);
  float Width = 0;
  float Height = 0;
  color Color;
  String Texto;
  Boolean Presionar = false;
  Boolean Click = false;
  
  Button (int x, int y, int w, int h, String t, int r, int g, int b){
    Pos.x = x;
    Pos.y = y;
    Width = w;
    Height = h;
    Color = color (r, g, b);
    Texto = t;
  }
  void actualizar (){
    if (mousePressed == true && mouseButton ==LEFT && Presionar == false){
      Presionar = true;
      if (mouseX >= Pos.x && mouseX <= Pos.x+300 && mouseY >= Pos.y && mouseY <= Pos.y + 300)
      {
        Click = true;
      }
    } else {
      Click = false;
      Presionar = false;
    }
    if (mousePressed != true){
      Presionar = false;
    }
  }
  void render (){
    fill (Color);
    rect (260, 310, 80, 80);
    fill (0);
    textAlign (CENTER, CENTER);
    text (Texto, Pos.x + (200), Pos.y+ (250));
  }
  boolean isClick (){
    return Click;
  }
    
}
