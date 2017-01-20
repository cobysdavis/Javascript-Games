class Tank{

  PVector pos=new PVector(0,0);
  PVector vel=new PVector(0,0);
  PVector acc=new PVector(0,gravity);
  float a;
  float r=60;
  float sizex=40;
  float sizey=20;
  PVector barrell=new PVector(pos.x+sizex/2+r*cos(a),pos.y+r*sin(-a));

  
Tank(PVector pos_,float a_){
   pos=new PVector(pos_.x,pos_.y);
   a=a_;
  }
  

  void update(Terrain t){
  pos.add(vel);
  vel.add(acc);
  vel.x=0;
  int min=floor(pos.x);
  if(pos.y+sizey>=height-t.ground[min+t.buffer]){
  pos.y=height-t.ground[min+t.buffer]-sizey;
  }
  
  if(pos.x<=0){
  pos.x=0;
  }
  
  if(pos.x+sizex>=width){
  pos.x=width-sizex;
  }
  
  
  barrell=new PVector(pos.x+sizex/2+r*cos(a),pos.y+r*sin(-a));
  
  if(a<=0){
  a=0;
  } 
  if(a>=PI){
  a=PI;
  } 
  if(keyPressed && keyCode==38){
  a=a+0.08;
  }
  if(keyPressed && keyCode==40){
  a=a-0.08;
  }
  
  barrell=new PVector(pos.x+sizex/2+r*cos(a),pos.y+r*sin(-a));
  if(barrell.x<=0){
  barrell.x=0;
  }
  if(barrell.y<=0){
  barrell.y=0;
  }
  
  if(barrell.x>=width){
  barrell.x=width;
  }
  if(barrell.y>=width){
  barrell.y=width;
  }
  }
  
void move(){
  if(keyPressed && keyCode==37){
  vel.x=-4;
  }
  
  if(keyPressed && keyCode==39){
  vel.x=4;
  }
  
  }
  
 
  
  void show(){
  fill(0);
  line(pos.x+sizex/2,pos.y,barrell.x,barrell.y);
  rect(pos.x,pos.y,sizex,sizey);
  ellipse(barrell.x,barrell.y,5,5);
  }
  
  
}