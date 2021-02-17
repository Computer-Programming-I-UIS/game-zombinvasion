import ddf.minim.*;
int x= -100, b, ventana=0;
int z=1000;
int l=200;
int space=30;
int y=500;
float speed= 50;
PImage zombies2;
PImage fondo;
enemigos[] zombies;
PImage tanque;
PImage ciudad1;
PImage soldado1;
PImage bala2;
ArrayList<Bala> balas;
Minim minim;
AudioPlayer[] s;


// Objeto de la clase soldado
soldado pepito;


void setup() {
  size(1300, 600);
  // Inicializar el objeto soldado
  pepito = new soldado(1100, 200);
  zombies = new enemigos[10];
  float posicionAnterior = random(-1000, 100);
  for (int i=0; i < 10; i ++) {
    float posicionNueva;
    do {
      posicionNueva = random(1000)*-1;
      println(posicionNueva);
    } while (posicionNueva == posicionAnterior);
    zombies[i] = new enemigos(posicionNueva);
    posicionAnterior = posicionNueva;
  }
  balas = new ArrayList<Bala>(); 
  ciudad1= loadImage("ciudad1.jpg");  
  zombies2 = loadImage("zombies2.gif");
  tanque= loadImage("tanque.png");
  soldado1= loadImage("soldado1.png");
  bala2= loadImage("bala2.png");
  fondo= loadImage("fondo.jpg");
  minim = new Minim(this);
 s=new AudioPlayer[20];
 s[0] = minim.loadFile("temainicio.mp3");
}

void draw() {
  if (ventana==1) {
    if(s[0].isPlaying()){
      s[0].pause();
    }
    image(ciudad1, 0, 0, 1300, 600);
    image(tanque, 900, 300, 450, 300);
    for (b = balas.size()-1; b >= 0; b--) {
      Bala bala = balas.get(b);
      bala.update();
    }
    pepito.dibujar();
    text("VIDA: "+str(pepito.vida),10,20);
    text("VENECOS DEPORTADOS A BALA: "+str(pepito.score),10,50);
    if(pepito.vida<=0){
    ventana=3;
    }
    for (int i=0; i < 10; i ++) {
      zombies[i].movimiento();
      for (int j = balas.size()-1; j >= 0; j--) {
        Bala bala = balas.get(j);
        if (bala.pos.x>zombies[i].x && bala.pos.x<zombies[i].x+50 && bala.pos.y>zombies[i].y &&  bala.pos.y<zombies[i].y+50 && zombies[i].vivo) {
          zombies[i].vivo=false; 
          balas.remove(j);
        }
      }
    }



    z-=speed;
    l+=speed;
  } else if (ventana==0) {
    menu();
  }
  else if(ventana==2){
  creditos();
  }
  else if(ventana==3){
  background(0);
  text("¡HAS MUERTO!",500,500);
  }
}

void mousePressed() {

  balas.add(new Bala(1100, 200, mouseX, mouseY));
  pepito.mousePressed();
}

void mouseReleased() {


  pepito.mouseReleased();
}
