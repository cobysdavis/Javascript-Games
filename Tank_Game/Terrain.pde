class Terrain{

int buffer=10;
float[] ground=new float[width+buffer];
float[] slope=new float[width+buffer];
float[] perp=new float[width+buffer];
float r=10;
Terrain(){
for(int i=0;i<width+buffer;i++){
ground[i]=-cos(i*0.008)*200+height/2;

}
}

void show(){
for(int i=0;i<width+buffer;i=i+3){
  point(i,-ground[i]+height);
  }
}



void begin(){
  for(int i=0;i<width+buffer;i=i+3){
  slope[i]=ground[i+1]-ground[i];
  perp[i]=-1/slope[i];
  }
}

void perp(){
  for(int i=0;i<width+buffer;i=i+3){
  line(i,ground[i],i,perp[i]-ground[i]);
}
}
}