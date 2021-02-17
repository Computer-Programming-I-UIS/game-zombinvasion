void menu() {

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
