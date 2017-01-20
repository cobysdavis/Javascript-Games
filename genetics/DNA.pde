class DNA{
  
float[] genes=new float[3];
int fitness;
DNA(){
for(int i=0;i<genes.length;i++){
  genes[i]=random(255);
}
}

void fit(){
float score=0;
float d1,d2,d3;
float r=red(target);
float g=green(target);
float b=blue(target);
d1=abs(genes[0]-r);
d2=abs(genes[1]-g);
d3=abs(genes[2]-b);
score=d1+d2+d3;
fitness=floor(map(score,0,765,100,0));
}

DNA crossover(DNA partner){
DNA child=new DNA();
child.genes[0]=genes[0];
child.genes[1]=genes[1];
child.genes[2]=partner.genes[2];
return child;
}

void mutate(float mutationRate){

for(int i=0;i<genes.length;i++){
  float r=random(1);
if(r<=mutationRate){
  genes[i]=random(255);
}
}

}

}