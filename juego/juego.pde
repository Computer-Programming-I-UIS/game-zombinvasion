import ddf.minim.*;
int x= -100, b, ventana=0;
int z=1000;
int l=200;
int space=30;
int y=500;
float speed= 50;
PFont titulo;
PImage zombie2;
PImage zombie1;
PImage zombie3;
PImage fondo;
PImage creditos;
PImage bala3;

Boton jugarb, salir, credit;
enemigos[] zombies;
PImage tanque;
PImage ciudad1;
PImage soldado1;
PImage bala2;
ArrayList<Bala> balas;
Minim minim;
AudioPlayer[] s;
AudioPlayer[] sonidobala;
AudioPlayer[] sonido1;


// Objeto de la clase soldado
soldado pepito;
Municion cartucho;


void setup() {
  size(1300, 600);
  frameRate(30);
  // Inicializar el objeto soldado
  cartucho = new Municion();
  pepito = new soldado(1100, 200);
  zombies = new enemigos[15];
  jugarb=new Boton("Jugar",300,200,100,30,15,17,1);
salir=new Boton("Salir",300,500,100,30,15,17,-1);
credit=new Boton("Creditos",300,350,100,30,15,17,2);
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
  bala3 = loadImage("bala3.png");
  ciudad1= loadImage("ciudad1.jpg");  
  zombie2 = loadImage("zombie2.png");
  zombie3 = loadImage("zombie3.png");
  zombie1 = loadImage("zombie1.png");
  tanque= loadImage("tanque.png");
  soldado1= loadImage("soldado1.png");
  bala2= loadImage("bala2.png");
  fondo= loadImage("fondo.jpg");
  creditos = loadImage("fondocreditos.jpg");
  titulo = createFont("fuente.ttf",20);
  minim = new Minim(this);//musica del juego
  s=new AudioPlayer[20];
  s[0] = minim.loadFile("temainicio.mp3");
  s[1] = minim.loadFile("sonidobala.mp3");
  s[2] = minim.loadFile("sonido1.mp3");
  
}

void draw() {
  if (ventana==1) {
    if (s[0].isPlaying()) {
      s[0].pause();
    }
    image(ciudad1, 0, 0, 1300, 600);
    image(tanque, 900, 300, 450, 300);
    for (b = balas.size()-1; b >= 0; b--) {
      Bala bala = balas.get(b);
      bala.update();
    }
    cartucho.draw();
    pepito.dibujar();
    text("VIDA: "+str(pepito.vida), 10, 20);
    text("ZOMBIS ASESINADOS: "+str(pepito.score), 10, 50);
    if (pepito.vida<=0) {
      ventana=3;
    }
    for (int i=0; i < 10; i ++) {
      zombies[i].movimiento();
      for (int j = balas.size()-1; j >= 0; j--) {
        Bala bala = balas.get(j);
        if (bala.pos.x>zombies[i].x && bala.pos.x<zombies[i].x+50 && bala.pos.y>zombies[i].y &&  bala.pos.y<zombies[i].y+50 && zombies[i].vivo) {
          zombies[i].vida--; 
          balas.remove(j);
        }
      }
    }



    z-=speed;
    l+=speed;
  } else if (ventana==0) {
    menu();
  } else if (ventana==2) {
    creditos();
    
  } else if (ventana==3) {
    background(0);
    text("¡HAS MUERTO!", 500, 500);
  }
}

void mousePressed() {

  if (cartucho.maxbala>0) {
    balas.add(new Bala(1100, 200, mouseX, mouseY));
    s[1].rewind();
    s[1].play();
    pepito.mousePressed();
  } else {
    pepito.imagesIndex = 1;
  }
  cartucho.mousePressed();
}

void mouseReleased() {

  if (cartucho.maxbala>0) {
    pepito.mouseReleased();
  }else {
    pepito.imagesIndex = 1;
  }
}
