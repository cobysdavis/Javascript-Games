ArrayList<Particle> particles;
void setup(){
size(400,400);
particles=new ArrayList<Particle>();
}

void draw(){
    background(255); 

for(Particle p: particles){
p.show();
p.update();
} 

if(particles.size()>=20){
particles.remove(0);
}
for(Particle p:particles){
println(p.r);
}


}

void keyPressed(){
  if (key==CODED){
  if(keyCode==UP){
  particles.add(new Particle());
  }
  //if(keyCode==DOWN){
  //particles.remove(0);
  if(keyCode==RIGHT){
  if(particles.size()>0){
  Particle p=particles.get(0);
    p.increase();
  }
  }
  }
}


class Particle{
float x=random(0,width);
float y=random(0,height);
float xv=0;
float yv=0;
float ya=0.1;
float r=20;


void stop(){
xv=0;
yv=0;
}

void increase(){
r=r+10;
}

void update(){
x=x+xv;
y=y+yv;
yv=yv+ya;

if(x<=0 || x>=width){
xv=-xv;
}
if(y<=0 || y>=height){
yv=-yv;
}

}

void show(){
fill(0);
noStroke();
ellipse(x,y,r,r);
}
}