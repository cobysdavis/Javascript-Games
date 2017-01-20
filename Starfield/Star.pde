class Star {
 float x;
 float y;
 float z;
 
 float px;
 float py;
 
Star(){
x=random(-width,width);
y=random(-height,height);
z=random(width);
}

void update(){

  z=z-speed;
  if(z<1){
  x=random(-width,width);
  y=random(-height,height);
  z=random(0,width);
  }
}
void show(){
fill(255);
noStroke();

float sx=map(x/z,0,1,0,width);
float sy=map(y/z,0,1,0,height);
float r=map(z,0,width,20,0);
ellipse(sx,sy,r,r);

px=sx;
py=sy;

stroke(255);
strokeWeight(4);
line(px,py,sx,sy);

}

}