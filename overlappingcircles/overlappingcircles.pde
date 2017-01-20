
void setup(){
size(500,500);
background(255);
for(int i=0;i<20;i++){
fill(200,20,90);
noStroke();
float r=random(5,15);
float x=random(height);
float y=random(width);
ellipse(x,y,r,r);
}


}

void draw(){

}