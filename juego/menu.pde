void menu() {
  s[0].play();
  if(!s[0].isPlaying()){
    s[0].rewind();
  }
  

  image(fondo, 0, 0, 1600, 600);
  fill(255);
  text("PRESIONE P PARA INICIAR", 200, 500);
  text("PRESIONE C PARA VER LOS CREDITOS", 200, 300);
}
void keyPressed() {
  if (ventana==0) {
    switch(keyCode) {
    case 'p':
    case 'P':
      ventana=1;
      break;

    case 'c':
    case 'C':
      ventana=2;
      break;
    }
  }
}
void creditos(){
background(#E31515);
text("AUTOR: DANIEL OCHOA Y JUAN ARENAS",500,100);
text("INTRO DEL JUEGO: PINTEREST",500,300);
text("DIBUJOS TANQUE, SOLDADO Y BALA: NICOLAS ESCOBAR",500,500);

}
