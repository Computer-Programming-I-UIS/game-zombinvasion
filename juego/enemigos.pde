class enemigos {

  float x;
  float y=500; 
  float speed; 
  boolean vivo=true;
  enemigos(float tempX) {
    x = tempX;
  }

  void movimiento() {

    x += 3.5;
    if(vivo){
      image(zombies2, x, y, 100, 100);
    }
    }
  }
