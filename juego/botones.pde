class Boton{
 PVector pos;
 float l=100,a=30,tfx,tfy;
 String tx;
 int pantalla;
 float wd;
  Boton(String txt,float x, float y,float al,float aa, float atfx,float atfy, int command){
   pos = new PVector(x,y);
   tx=txt;
   pantalla=command;
   l=al;
   a=aa;
   tfx=atfx;
   tfy=atfy;
 }

 void place(){
   fill(#FFFFFF);
  rect(pos.x,pos.y,l,a); 
  fill(0);
  text(tx,pos.x+tfx,pos.y+tfy); 
  comando();
 }
  void comando(){
   if(mouseX>pos.x && mouseX<pos.x+l && mouseY>pos.y && mouseY<pos.y+a){
     if(mousePressed){
       if(pantalla==-1){
        exit(); 
       }else{
      ventana=pantalla; 
       }
     }
   }
    
  }
  
}
