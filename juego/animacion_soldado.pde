class soldado {
  // Atributos de la clase
  int maxImages = 2;
  int imagesIndex= 1;
  float vida=200;
  int posX, posY;
  int score=0;
  PImage[] images = new PImage[maxImages];
  boolean disparo = false;

  //contructor
  soldado(int posX_inicial, int posY_inicial, String nombreImagen ) {
    posX = posX_inicial;
    posY = posY_inicial;
    for (int i =0; i< images.length; i++) {
      images[i]=loadImage(nombreImagen + str(i+1) +  ".png");
    }
  }
  soldado(int posX_inicial, int posY_inicial ) {
    posX = posX_inicial;
    posY = posY_inicial;
    for (int i =0; i< images.length; i++) {
      images[i]=loadImage("soldado" + str(i+1) +  ".png");
    }
  }

  // MÃŠtodos de la clase
  void dibujar() {

    image(images[imagesIndex], posX, posY, 150, 110);
  }

  void mousePressed() {
    imagesIndex = (imagesIndex+1)%images.length;
    if (!disparo) disparo = true;
    
  }
  
  void mouseReleased() {
    imagesIndex = (imagesIndex+1)%images.length;
  }
  
}
