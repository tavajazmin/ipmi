// tava jazmin
//tp2 comision1

//el tarro de miel es el boton de reinicio

PImage f1;
PImage f2;
PImage f3;
PImage f4;

PImage bot1;
PImage bot2;

//personajes

PImage a1;
PImage a2;
PImage a3;
PImage b1;
PImage b2;

//codigo

PFont fuente;

int segundos ;

int x, y, ancho, alto;
int mov1;
int mov2;
int mov3;
int color1;

String estado;
boolean reset;


void setup() {

  size(640, 480);

  fuente = loadFont("silka.vlw");
  estado = "inicio";
  x = 235;
  y = 111;
  ancho = 172 ;
  alto = 302 ;

  mov1 = 230;
  mov2 = 230;
  mov3 = 120;
  color1 = 180;
  

  textFont(fuente, 5);
  textSize(40); //texto tiempo

  f1 = loadImage ("fondo1.png");
  f2 = loadImage ("fondo2.png");
  f3 = loadImage ("fondo3.png");
  f4 = loadImage ("fondo4.png");

  //boton

  bot1 = loadImage("boton1.png");
  bot2 = loadImage("boton2.png");

  //personajes

  a1 = loadImage ("fotograma1.png");
  a2 = loadImage ("fotograma2.png");
  a3 = loadImage ("fotograma3.png");
  b1 = loadImage ("fotograma4.png");
  b2 = loadImage ("fotograma5.png");
}


void draw() {

  //fondo

  if (estado.equals("inicio")) {
    image(f1, 0, 0, 640, 480);

    text("Winnie the pooh \n y el pequeño elefante", 230, mov1);
    mov1--;
  } else if (estado.equals("segunda")) {
    image(f2, 0, 0, 650, 480);

    text("Producida por \n jessica koplos-miller", mov2, 250);
    mov2--;
  } else if (estado.equals("tercera")) {
    image(f3, -20, -3, 680, 500);

    text("Basado en los personajes \n de A.A.Milne", mov3, 360);
    mov3--;
  } else if (estado.equals("cuarta")) {
    image(f4, -20, -3, 680, 500);

    text("director de arte\n Tony Pulham", 150, 250);
    textFont(fuente);
    fill(255, color1);
    color1 =color1 -1;
  }

  //limites de movimiento

  if (mov1>=640 || mov1<100 ) {

    mov1 = 100;
  }
if (mov2<100 ||mov2>300){
 mov2 = 100;
  
}



  if (frameCount%60 == 0) { //cuenta seg
    segundos++;
  }

  //transiciones

  if (segundos<1) {
    estado = "inicio";
    image(a1, 0, 0, 640, 480);
  } else if (segundos >=1 && segundos <= 2) {
    image(a2, -30, 0, 650, 530);
    
  } else if (segundos >=3 && segundos <= 4) {
    image(a3, 0, -30, 680, 560);
    
  } else if (segundos >=4 && segundos <= 5) {
    estado = "segunda";
    image(b1, -130, 0, 600, 450);
    
  } else if (segundos >=5 && segundos <= 6) {
    image(b2, -100, -100, 850, 650);
    
  } else if (segundos >6 && segundos <8) {
    estado = "tercera" ;
    
  } else if (segundos >8 && segundos <10) {
    estado = "cuarta" ;
    
  } else if (segundos> 12) { 
   image (bot1, 0, 0, 640, 480);

   
  }
  
  
}




void mousePressed() {
  
 if ( mouseX >= x && mouseX< x+ancho && mouseY >y && mouseY < y+alto && segundos> 12 ) {


   image(bot2,0,0,640,480);
    estado = "inicio";
    segundos = 0;

    fill (255);
    textSize(40);
    mov1 = 230;
    mov2 = 230;
    mov3 = 120;
    color1 = 180;

   
    
  }
  
  
  
  
  
}
