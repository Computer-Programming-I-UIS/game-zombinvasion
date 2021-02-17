class enemigos {

  float x;
  float y=500; 
  float speed=random(1,5); 
  boolean vivo=true;
  enemigos(float tempX) {
    x = tempX;
  }

  void movimiento() {
  if(vivo==false){
  x=random(-100,-500);
  vivo=true;
  pepito.score+=1;
  }
  if(x>900&&x<1000){
  pepito.vida-=10;
  x = random(-500,-1000);
  }
    x += speed;
    if(vivo){
      image(zombies2, x, y, 100, 100);
    }
    }
  }
