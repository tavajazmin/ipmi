//Tava Jazmin
//tp 3

// https://youtu.be/T7yMXQXGTQE



PImage foto;

int cant = 37;
int tam;
int q,w,e,r,y;

float loco;


boolean zeus= true;



color tono;
PFont fuente;

void setup() {
  size( 800, 400); //RECORDAR PONER (800,400);

  tono = color(255);
 loco = (0);
  
  fuente = loadFont("alef.vlw");
    foto = loadImage("opt.jpg");
  
  q = 350;
  w = 10;
  e = 100;
  r = 40;
  y = 150;
 
  tam =width/cant;
textFont(fuente,5);
textSize(20);

}
void draw() {
  
  //no borrar
  background (loco);
  
  image ( foto, 0, 0, 400, 400);
 
 optico();
 if(!zeus)
 colores();

 
  
  // separador
  
}

void optico(){
  for (int i = 20; i < 38; i++) {
    for (int j =0; j < 21; j++) {

      float distan =dist(mouseX,mouseY , i*tam, j*tam);
      float diagonal =dist (1, 1, 250, 0);
      float rango = map (distan, 0, diagonal, 0, 20);
     

      if ((i+j)%1==0 && mouseX>=400) {

        fill(tono);
        ellipse(i*tam, j*tam, rango, rango);
    } else {
    mouseX=400;
    mouseY=200;
     fill(255,0,50);
    
    }
      }
    }
  }
  
  void cato(){
  for (int i = 20; i < 38; i++) {
    for (int j =0; j < 21; j++) {

      float distan =dist(mouseX,mouseY , i*tam, j*tam);
      float diagonal =dist (1, 1, 250, 0);
      float rango = map (distan, 0, diagonal, 0, 20);
     

      if ((i+j)%1==0 && mouseX>=400) {

        fill(tono);
       rect(i*tam, j*tam, rango, rango);
    } else {
    mouseX=400;
    mouseY=200;
     fill(255,0,50);
    
    }
      }
    }
  }
  

void colores(){
    fill(255,200,0);
  
  rect (q,q,e,r);
  fill(0);
  text ("boton B",360,380);
 
  
  fill (100,255,50);
  rect (q,w,e,r);
  fill(0);
   text("boton A",360,40);
  
  fill(255);
}



void mousePressed(){
 if (mouseX>= q && mouseX < q+e && mouseY >q  && mouseY< q+r ){
   tono = color(255,200,0);
 }else if ( mouseX>=q  && mouseX <q+e  && mouseY>w  && mouseY< w+r){
  tono = color(100,255,50); 
 }else if (zeus == true )zeus = false;  
 else zeus = true;
}




void keyPressed (){
 if(key == 'r'){
 mouseX = 600;
 mouseY = 200;
   tono = (255);
   

 }
}
