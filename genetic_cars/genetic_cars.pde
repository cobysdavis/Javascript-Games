int lifespan=200;
int psize=20;
Car[] population=new Car[psize];

void setup(){
size(500,500);
for(int i=0;i<psize;i++){
population[i]=new Car();
}

}

void draw(){
background(255);
for(int i=0;i<psize;i++){
population[i].update();
population[i].show();
}
}