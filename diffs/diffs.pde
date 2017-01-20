float yold;
float t=0;
float ynew=0;
float factor=100;

void setup(){
size(800,400);
background(255);

}

void draw(){
translate(0,height/2);
yold=factor*cos(0.2*t);
t=t+0.1;
ynew=factor*cos(0.2*t);
line(x,yold,t,ynew);

}