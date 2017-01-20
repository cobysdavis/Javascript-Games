float r=100;
float p=r/2;
float theta;
void setup(){
size(400,400);
background(255);
}

void draw(){
translate(width/2,height/2);
fill(255);
stroke(0);
ellipse(0,0,r,r);
line(0,0,(r*cos(theta))/2,(r*sin(theta))/2);
theta=theta-0.01;

}