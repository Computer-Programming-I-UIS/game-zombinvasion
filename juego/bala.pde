class Bala {
  PVector pos;
  PVector vel;
  int speed = 50;
  boolean tp;
  float angle;
  //float yfin;
  //float xfin;
  Bala(float x, float y, float xstop, float ystop) {
    pos = new PVector(x, y);
    vel = new PVector(xstop-x,ystop-y);
    vel.normalize();
    vel.mult(speed);
    angle = atan( (ystop - y) / (x - xstop) );
  }

  void update() {
    pushMatrix();
    translate(pos.x,  pos.y);
    image(bala2, 0, 0, 60, 20);
    rotate(angle);
    
    popMatrix();
    pos.add(vel);

    if (pos.x > 0 && pos.x < width && pos.y > 0 && pos.y < height) {
    } else {
      balas.remove(b);
    }
  }
}
