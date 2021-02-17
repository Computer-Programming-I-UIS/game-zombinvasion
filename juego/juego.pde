int x= -100;
int z=1000;
int l=200;
int space=30;
int y=500;
float speed= 5;
PImage zombies2;
enemigos[] zombies;
PImage tanque;
PImage ciudad1;
PImage soldado1;
PImage bala2;

// Objeto de la clase soldado
soldado pepito;


void setup() {
  size(1300, 600);
  // Inicializar el objeto soldado
  pepito = new soldado(1100, 200);
  zombies = new enemigos[10];
  for (int i=0; i < 10; i ++) {
    zombies[i] = new enemigos(random(-100, 0));
  }
bala = new bala(line(1100,200,mouseX,mouseY));


  ciudad1= loadImage("ciudad1.jpg");  

  zombies2 = loadImage("zombies2.gif");
  tanque= loadImage("tanque.png");
  soldado1= loadImage("soldado1.png");
  bala2= loadImage("bala2.png");
}

void draw() {
  image(ciudad1, 0, 0, 1300, 600);
  image(tanque, 900, 300, 450, 300);

  x+= speed;
  image(zombies2, x, y, 100, 100);
  pepito.dibujar();
  for (int i=0; i < 10; i ++) {
    zombies[i].movimiento();
  }


  z-=speed;
  l+=speed;
  image(bala2, z, l, 80, 20);
}

void mousePressed() {


  pepito.mousePressed();
}

void mouseReleased() {


  pepito.mouseReleased();
}
