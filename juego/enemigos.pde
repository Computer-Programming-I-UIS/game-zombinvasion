
class enemigos {

  float x;
  float y=500; 
  float speed; 

  enemigos(float tempX) {
    x = tempX;
  }

  void movimiento() {

    x += 3.5;
      image(zombies2, x, y, 100, 100);
    }
  }
