class enemigos {

  int vida;
  int z;  
  float x;
  float y=500; 
  float speed=random(1, 5); 
  boolean vivo=true;
  enemigos(float tempX) {
    x = tempX;
    z = (int) random(0, 3.9);
    vida=z;
  }

  void movimiento() {
    if (vivo==false) {
      x=random(-100, -300);
      vivo=true;
      
    }

    if (x>900&&x<1000) {
      pepito.vida-=10;
      x = random(-500, -1000);
    }
    x += speed;

    if (vivo) {
      switch(z) {

      case 1:
        image(zombie2, x, y, 100, 100);
        break;

      case 2:
        image(zombie1, x, y, 100, 100);
        break;

      case 3:
        image(zombie3, x, y, 100, 100);
        break;
      }
    }
    if (vida<=0) {
      vivo=false;
      
    }
  }
}
