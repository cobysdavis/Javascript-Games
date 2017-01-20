Mover m;
PVector anchor;



void setup(){
size(500,500);
background(255);
m=new Mover();
}

void draw(){

  background(255);
  PVector anchor=new PVector(0,0);
  float mx=map(mouseX,0,width,-1,1);
  float my=map(mouseY,0,height,-1,1);
  m.applyForce(mx,my);
  m.update();
  m.show();
  println(mx,my);
  line(anchor.x,anchor.y,m.loc.x,m.loc.y);
}



class Mover{
PVector loc;
PVector vel;
PVector acc;
float size=10;
float m=1;

Mover(){
 loc=new PVector(width/2,height/2);
 vel=new PVector(0,0);
 acc=new PVector (random(-1,1),random(-1,1));

}


void applyForce(float a,float b){
PVector f;
f=new PVector(40,89);
acc=f.sub(loc);
acc.mult(0.001);

}

void update(){
vel.add(acc);
loc.add(vel);



}

void show(){
ellipse(loc.x,loc.y,size,size);
}

}