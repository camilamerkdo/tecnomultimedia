//Mercado,Camila
//tp0 figuras
/*Mi idea es que usted le pueda dibujar la cola al gato*/

void setup (){
size(600,600);
background(200);

}
void draw()
{

ellipse(mouseX,mouseY, 50,50);
stroke (0); 
strokeWeight (1);
ellipse(300,400,350,350);
triangle(280,92,160,100,200,200);
triangle(440,100,320,92,400,200);
ellipse(300,200,200,220);
ellipse(250,200,10,10);
ellipse(350,200,10,10);
ellipse(300,230,30,15);
line(300,238,260,270);
line(340,270,300,238);
rect(340,500,80,80);
rect(180,500,80,80);
triangle(200,330,300,500,400,330);
triangle(280,92,160,100,230,140);
triangle(440,100,320,92,370,140);
}
