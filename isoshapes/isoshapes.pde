int size=4;
Ball[] b=new Ball[size];
void setup(){
size(500,500);
background(255);
for(int i=0;i<b.length;i++){
  b[i]=new Ball();
}

}


void draw(){

for(int y=0;y<height;y++){
  for(int x=0;x<width;x++){
  fill(5000/dist(x,y,b[0].x,b[0].y));
  noStroke();
  rect(x,y,1,1);
  }
  }
for(int i=0;i<b.length;i++){
   b[i].update();
  }


}
class Ball{
float x=random(0,width);
float y=random(0,height);
float vx=random(10,30);
float vy=random(10,30);

void update(){
if(y<=0 || y>=height){
vy=-vy;
}
if(x<=0 || x>=width){
vx=-vx;
}
x=x+vx;
y=y+vy;
}

void show(){
fill(0);
noStroke();
ellipse(x,y,10,10); 
}

}