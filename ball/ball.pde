Ball b;
float d;
PVector v;
float grav=0.3;
void setup(){
size(400,400);
b= new Ball();

}

void draw(){
  background(255);
  b.update();
  b.show();
  if (b.i!=null & b.f!=null){
  println("good");
  v=(b.i.sub(b.f)).mult(0.1);
  b.vx=v.x;
  b.vy=v.y;
  b.i=null;
  b.f=null;
  }
}
void mousePressed(){
d=dist(mouseX,mouseY,b.x,b.y);
if(d<b.r){
b.i=new PVector(mouseX,mouseY);
}
}

void mouseReleased(){
b.f=new PVector(mouseX,mouseY);
}

void keyPressed(){
b.vx=0;
b.vy=0;
}
class Ball{
float x=width/2;
float y=height/2;
float r=20;
float vx;
float vy;
float ay=grav;

PVector i;
PVector f;

void gravity(){
vy=vy+ay;
}

void update(){
x=x+vx;
y=y+vy;


if(x<=0 || x>=width){
vx=-vx;
}

if(y<=0 || y>=height){
vy=-vy;
}
}

void show(){
  fill(0);
  noStroke();
  ellipse(x,y,r,r);
}

}