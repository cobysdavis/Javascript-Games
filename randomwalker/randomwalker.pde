Walker w;
void setup(){
  size(400,400);
  background(255);
  w=new Walker();
}

void draw(){
w.update();
w.show();

}

class Walker{
float x=width/2;
float y=height/2;
float r=1;
float c=0;

void update(){
int choice=int(random(4));

if(choice==0){
x=x+1;
else if(choice==1){
x=x-1;
}
if(choice==2){
y=y-1;
}
if(choice==3){
y=y+1;
}

c=c+0.01;;
}

void show(){
fill(c,255-c,0);
noStroke();
ellipse(x,y,r,r);
}
}