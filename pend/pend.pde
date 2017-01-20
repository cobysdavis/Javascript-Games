Ball b;
void setup(){
size(400,400);

}

void draw(){
background(255);
b=new Ball();
b.update();
b.show();
}

class Ball{
float x=10;
float y=0;
float t=0;

void update(){
  t=t+0.1;
  x=sin(t);
  y=-cos(t);
}


void show(){
translate(width/2,height/2);
fill(0);
noStroke();
ellipse(x,y,10,10);
println(x,y);
}

}