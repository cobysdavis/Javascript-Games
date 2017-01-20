Tank t;
Terrain l;
float power=0;
PVector p;
float gravity=0.1;
int a=0;
PVector id=new PVector(0,0);
PVector mid=new PVector(0,0);
PVector iv=new PVector(0,0);
ArrayList<Bullet> bullets;
float realpower;
void setup(){
translate(width/2,height/2);
size(800,600);
bullets=new ArrayList<Bullet>();
p=new PVector(0,0);
t=new Tank(p,PI/2);
l=new Terrain();
translate(0,height);
l.begin();

}

void draw(){
background(255);

t.move();
t.show();
t.update(l);

for (Bullet b: bullets){
b.show();
b.update(l);
}

fill(0,0,255);
rect(realpower,0,4,4);

l.show();
l.perp();

}



void keyReleased() {
  if(key=='s'){
  id=new PVector(t.barrell.x,t.barrell.y);
  iv=new PVector(((t.barrell.x-(t.pos.x+t.sizex/2)))*power,power*(t.barrell.y-t.pos.y));
  bullets.add(new Bullet(id,iv));
  }

  if(key=='='){
    power=power+0.005;
    if(power>=0.1){
    power=0.1;
  }
    realpower=map(power,0,0.1,0,width-5);
  }
    if(key=='_'){
    power=power-0.005;
       if(power<=0){
    power=0;
  }
    realpower=map(power,0,0.1,0,width-5);
  }
}