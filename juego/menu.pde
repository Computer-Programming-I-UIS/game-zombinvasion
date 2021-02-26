void menu() {
  s[0].play();
  if (!s[0].isPlaying()) {
    s[0].rewind();
  }


  image(fondo, 0, 0, 1600, 600);
  fill(255);
  text("PRESIONE P PARA INICIAR", 200, 500);
  text("PRESIONE C PARA VER LOS CREDITOS", 200, 300);
    jugarb.place();
  salir.place();
  credit.place();
}
void keyPressed() {
  if (ventana==0||ventana==2) {
    switch(keyCode) {
    case 'p':
    case 'P':

      if (!s[0].isPlaying()) {
        s[0].rewind();
        if (s[2].isPlaying()) {
          s[2].play();
          s[2].pause();
        }
      }
      ventana=1;
      break;

    case 'c':
    case 'C':

      if (!s[0].isPlaying()) {
        s[0].rewind();
        if (s[2].isPlaying()) {
          s[2].play();
          s[2].pause();
        }
      }
      ventana=2;
      break;

    case 'm':
    case 'M':
      ventana=0;
      break;
    }
  }
}
void creditos() {
  background(0);
  image(creditos,0,0,width,height);
  fill(255);
  textFont(titulo);
  textSize(30);
  text("AUTOR: DANIEL OCHOA Y JUAN ARENAS", 500, 100);
  text("INTRO DEL JUEGO: PINTEREST", 500, 300);
  text("DIBUJOS TANQUE, SOLDADO Y BALA: NICOLAS ESCOBAR", 500, 500);
}
