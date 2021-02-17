int x= -100, b, ventana=0;
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
ArrayList<Bala> balas;

// Objeto de la clase soldado
soldado pepito;


void setup() {
  size(1300, 600);
  // Inicializar el objeto soldado
  pepito = new soldado(1100, 200);
  zombies = new enemigos[10];
  for (int i=0; i < 10; i ++) {
    zombies[i] = new enemigos(random(-5000, 0));
  }
balas = new ArrayList<Bala>(); 

  ciudad1= loadImage("ciudad1.jpg");  
  zombies2 = loadImage("zombies2.gif");
  tanque= loadImage("tanque.png");
  soldado1= loadImage("soldado1.png");
  bala2= loadImage("bala2.png");
}

void draw() {
  if(ventana==1){
  image(ciudad1, 0, 0, 1300, 600);
  image(tanque, 900, 300, 450, 300);
  for (b = balas.size()-1; b >= 0; b--) {
    Bala bala = balas.get(b);
    bala.update();
   }
  pepito.dibujar();
  for (int i=0; i < 10; i ++) {
    zombies[i].movimiento();
   for (int j = balas.size()-1; j >= 0; j--) {
    Bala bala = balas.get(j);
   if(bala.pos.x>zombies[i].x && bala.pos.x<zombies[i].x+50 && bala.pos.y>zombies[i].y &&  bala.pos.y<zombies[i].y+50 && zombies[i].vivo){
     zombies[i].vivo=false; 
     balas.remove(j);
    }
}
  }



  z-=speed;
  l+=speed;
  }else if(ventana==0){
   menu(); 
    
  }
}

void mousePressed() {

  balas.add(new Bala(1100,200,mouseX,mouseY));
  pepito.mousePressed();
}

void mouseReleased() {


  pepito.mouseReleased();
}
