int x= -100;
int z=1000;
int l=200;
int space=30;
int y=500;
float speed= 5;
PImage zombies2;
PImage tanque;
PImage ciudad1;
PImage soldado;
PImage escopeta;
PImage bala;
void setup() {
  //size(600, 292);
  size(1300, 600);
  ciudad1= loadImage("ciudad1.jpg");
  //background(fondo1);
  zombies2 = loadImage("zombies2.gif");
  tanque= loadImage("tanque.gif");
  soldado= loadImage("soldado.jpg");
  escopeta= loadImage("escopeta.png");
  bala= loadImage("bala.jpg");
}
void draw() {

  //image(fondo1, 0, 0, 600, 292);
  image(ciudad1, 0, 0, 1300, 600);
  image(tanque, 1000, 300, 300, 300);
  //if ((int)x==200) {
    //x+= speed;
    //image(zombies2, x, y, 100, 100);
//  }
  x+= speed;
    image(zombies2, x, y, 100, 100);
    image(soldado,1200,200,90,110);
    image(escopeta,1100,200,90,110);
    z-=speed;
    l+=speed;
    image(bala,z,l,80,20);
}
