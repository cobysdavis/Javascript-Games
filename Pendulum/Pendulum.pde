float E;
float maxh;
PVector pos;

float y=0;
float size=2;
float radius=50;
float x=radius;
float t=0;
float amount=0;
void setup(){
 size(400,400);
 background(255);
 translate(width/2,height/2);
 pos=new PVector(x,y);

}

void draw(){
fill(0);
  translate(width/2,height/2);
  pos.y=amount*sin(t);
  pos.x=amount*cos(t);

   t=t+1;
amount=amount+0.1;
  point(pos.x,pos.y);

}