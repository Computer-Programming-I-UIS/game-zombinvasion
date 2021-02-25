class Municion {

  //1. Atributos
  PImage bala3;
  float scale = 0.1;
  int maxbala=10;
  int posX, posY;

  //2. El constructor
  Municion() {
    bala3 = loadImage("bala3.png");
    posX = 1100;
    posY = 100;
  }

  //3. Métodos

  void draw() {
    
    for (int i = 0; i<maxbala; i++) {

      image(bala3, posX + (i*bala3.width*scale)/4, posY, bala3.width*scale, bala3.height*scale);
    }
    if ( frameCount % 20 == 0 ) { // Esto es cada 1 seg (usando frameRate = 60 fps)
      maxbala = constrain(maxbala+1, 0, 10);
    }
  }
  void mousePressed() {

    maxbala = constrain(maxbala-1, 0, 10);
  }
}
