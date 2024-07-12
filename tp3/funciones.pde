void optico(float zero,float max,float veinte){
  
  for (int i = 20; i < 38; i++) {
    for (int j =0; j < 21; j++) {
      
    fill(blanco);
      float distan =dist(mouseX,mouseY , i*tami, j*tami);
     float diagonal =dist (zero, zero, max, zero);
    float rango = map (distan, zero, diagonal, zero,veinte);
   
        ellipse(i*tami, j*tami, rango, rango);
      }
    }
  }
  
  //no retorna valor
void botones(int max, int zero, int otro,int x, int y, int ancho, int largo){
  
  //boton b
  
    fill(max,otro,zero);
  rect (x,x,ancho,largo);
  
 //boton a
  
  fill (zero,max,otro);
  rect (x,y,ancho,largo);
}


void mousePressed(){
 if (mouseX>= 350 && mouseX < 350+100 && mouseY >350  && mouseY< 350+40 ){
  blanco= color(255,200,0);
 }else if ( mouseX>=350  && mouseX <350+100  && mouseY>10  && mouseY< 10+40){
  blanco = color(0,255,200); 
 }else if (ninja== true )ninja = false;  
 else ninja = true;
}

void keyPressed (){
 if(key == 'r'){
 mouseX = 600;
 mouseY = 200;
   blanco = (255);
 }
}
// retorna valor
float tamano (float cant,float cin){
  float total = cin/cant;
  
  return total;
}
