class Bala{
 PVector pos;
 int speed = 8;
 boolean tp;
 float yfin;
 float xfin;
 Bala(float x, float y,float xstop, float ystop){
  pos= new PVector(x,y);
  yfin=ystop;
  xfin=xstop;

 }

 void update(){
    
      image(bala2, pos.x, pos.y, 80, 20);
    if(pos.x>xfin){
      pos.x = pos.x - 15;
    }else if(pos.x<xfin){
      pos.x = pos.x - 15;
    }
    if(pos.y<yfin){
     pos.y=pos.y+0.3*sqrt(400^2+(1200-int(xfin))^2); 
    }
   
   if (pos.x > 0 && pos.x < width && pos.y > 0 && pos.y < height) {
     
    }
    else {
      balas.remove(b);
    }

   
     
  
 }
  
}
