ArrayList<DNA> matingPool;
float mutationRate=0.01;
DNA[] population=new DNA[100];
color target=color(200,20,150);
float radius=height/population.length*2.5;
void setup(){
  size(400,600);
  for(int i=0;i<population.length;i++){
  population[i]=new DNA();
  }
  fill(target);
  noStroke();
  ellipse(50,50,radius*2,radius*2);
  
  println(radius);
}

void draw(){
  frameRate(5);
  
  for(int i=0;i<population.length;i++){
  fill(population[i].genes[0],population[i].genes[1],population[i].genes[2]);
    noStroke();
  ellipse(100,(i+2)*radius*2,radius*2,radius*2);
  population[i].fit();
  println(population[i].fitness);
}

matingPool=new ArrayList<DNA>();

for(int i=0;i<population.length;i++){
  int n=population[i].fitness;
for(int j=0;j<n;j++){
  matingPool.add(population[i]);
}
}

for(int i=0;i<population.length;i++){
int a=int(random(matingPool.size()));
int b=int(random(matingPool.size()));
DNA A=matingPool.get(a);
DNA B=matingPool.get(b);
DNA child=A.crossover(B);

population[i]=child;
}
  
  
}