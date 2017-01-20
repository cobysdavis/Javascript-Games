class Car{
PVector pos=new PVector(width/2,height/2);
PVector vel=PVector.random2D();
PVector acc=new PVector(0,0);
float size=20;

PVector[] genes;

void Car(){
for(int i=0;i<lifespan;i++){
genes[i]=PVector.random2D();
}
}
void applyForce(PVector f){
acc.add(f);
}

void update(){
vel.add(acc);
pos.add(vel);
acc.mult(0);
}

void show(){
rectMode(CENTER);
fill(100);
noStroke();
ellipse(pos.x,pos.y,size,size);
}



}