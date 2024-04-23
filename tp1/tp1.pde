//tava jazmin
//tp1 comision 1
PImage fondo;
void setup() {
  size (800, 400);
  fondo = loadImage("miau.jpg");
}
void draw() {
  background(#F0E0D3);
  image(fondo, 0, 0, 400, 400);
  println(mouseX + " : " + mouseY); //codigo para posicion del mouse
  noStroke();
  fill(#D39857); //cuerpo del gato
  triangle(400, 280, 400, 400, 800, 400);
  fill(#120806);
  ellipse(654, 313, 140, 203);
  quad(549,235,582,293,624,293,608,240);
  triangle(719, 298, 689, 400, 732, 400);
  fill(#D39857);
  triangle(586, 339, 617, 400, 586, 400);
  fill(#FAC877);
  triangle(595,345,641,342,650,400);
  triangle(656, 258, 657, 377, 720, 342); //triangulo superior
  triangle(691, 400, 732, 400, 723, 352); //mancha inferior
  fill(255); //mancha blanca
  triangle(590, 273, 689, 273, 651, 400);
  ellipse(687,257,65,58);
  triangle(670,329,678,329,668,351);
  fill(#120806);  
  quad(733,238,729,266,685,291,679,247);
  //cabeza
  fill(#120806); //orejas
  ellipse(642, 200, 200, 200);
  triangle(569, 13, 566, 160, 615, 104);
  triangle(665, 107, 731, 0, 724, 145);
  fill(#FAC877); //naranja oreja derecha
  triangle (731,0,725,90,700,55);
  fill(#E5BEAB); //relleno orejas
  quad(570, 30, 570, 31, 570, 145, 599, 104);
  quad(726, 12, 713, 124, 675, 115, 674, 100);
  fill(#FAC877);
  triangle(638, 130, 655, 199, 700, 160);
  triangle(703,200,700,160,652,195);
  triangle(647,113,638,130,660,146);
  triangle(615,118,619,112,607,125);
  fill(255);
  rect(632, 185, 27, 95, 10);
  triangle(650,177,675,200,649,207);
  quad(631,275,646,288,645,297,621,283); //manchitas ocico
    fill(#FAC877);
    quad(646,289,660,276,661,295,646,298);
  fill(#FACAB8); //nariz
  strokeWeight(2);
  stroke(1);
  triangle(630, 275, 661, 275, 646, 290);
  stroke(4);
  line(644,288,644,300);
  line(648,288,648,300);
  strokeWeight(3);
  stroke(#FACAB8);
  line(646,290,646,299);
  fill(255);
  strokeWeight(5); //ojos del gato
  stroke(#1C1C1C);
  ellipse(605,214,40,40);
  ellipse(685,214,40,40);
  fill(1);
  stroke(#FCC75C);
  ellipse(605,214,20,35);
  ellipse(685,214,20,35);
  fill(255);
  noStroke();
  ellipse(678,204,10,5);
  ellipse(601,205,10,5);
//vigotes tiesos
strokeWeight(2);
stroke(255);
line(607,271,534,253);
line(609,282,546,296);
line(676,271,742,270);
line(673,282,733,302);
strokeWeight(3);
stroke(#C97C3D); //mancha naranja mas oscura
  line(660,185,663,154);
  line(663,154,672,185);
  fill(#C97C3D);
  triangle(663,154,672,185,672,167);
}
