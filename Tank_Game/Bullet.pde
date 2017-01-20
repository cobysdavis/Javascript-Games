class Bullet{
PVector pos;
PVector vel;
PVector acc=new PVector(0,gravity);
float r=30;
float c=0;

Bullet(PVector pos_,PVector vel_){
pos=new PVector(pos_.x,pos_.y);
vel=new PVector(vel_.x,vel_.y);
}

  
  void update(Terrain t){
  pos.add(vel);
  vel.add(acc);
  int min=floor(pos.x);
  
    if(pos.x<=t.buffer){
  pos.x=t.buffer;
  }
  
  if(pos.x>=width-t.buffer){
  pos.x=width;
  }
  

  
  
  
  if(pos.y+r/2>=height-t.ground[min]){
    pos.y=height-t.ground[min]-r/2;
    vel.x=0;
    c=255;
      if(t.ground[floor(pos.x+1)]<t.ground[floor(pos.x)]){
        pos.x=pos.x+1;
      }
      if (t.ground[floor(pos.x-1)]<t.ground[floor(pos.x)]){
        pos.x=pos.x-1;
      }
  }
  if(bullets.size()>1){
  bullets.remove(0);
  }  
  }
  
  void show(){
  fill(c,0,0);
  ellipse(pos.x,pos.y,r,r);
  
  }

}