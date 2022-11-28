//-----https://youtu.be/eJa_bLJGUA4
Juego game;
import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup() {
    
  size(600, 600);
  game = new Juego();
  minim = new Minim(this);
  player = minim.loadFile("a.mp3");
  
}

void draw() {
  game.jugar();
}
