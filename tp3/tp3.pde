//Tava Jazmin comision 1
//tp 3 recuperatorio
//presionar "r" para volver a la normalidad
// https://youtu.be/fvYnrPflVcw

PImage foto;

float tami =tamano (4.8,100);


boolean ninja= true;
color blanco,negro;

void setup() {
  size(800, 400);

  negro = color(0);
  blanco = color(255);

  foto = loadImage("opt.jpg");

  mouseX=600;
  mouseY=200;
}
void draw() {
  background (negro);

  image ( foto, 0, 0, 400, 400);

  optico(0,250,20);
  if (!ninja)
    botones(255, 0, 200, 350, 10, 100, 40);
}
