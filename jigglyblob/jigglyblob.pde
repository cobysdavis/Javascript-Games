void setup(){
size(400,400);
}


void draw(){
background(255);

beginShape();
float r=100;
translate(width/2,height/2);
float theta;
float col=random(100,200);
fill(col,0,0,col);
for(theta=0;theta>=-7;theta=theta-0.1){
float rx=random(0,10);
float ry=random(0,10);
vertex(r*cos(theta)+rx,r*sin(theta)+ry);
}
endShape();
}