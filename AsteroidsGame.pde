Spaceship x=new Spaceship();
Star []b=new Star[(int) (Math.random()*150)];
ArrayList<Asteroid> a=new ArrayList<Asteroid>();
ArrayList<Bullets> c=new ArrayList<Bullets>();

void setup() {
//runs only once
size(1000,1000);
for(int i=0;i<b.length;i++){
  b[i]=new Star();
  b[i].show();
 }
for(int i=0;i<10;i++){
  a.add(new Asteroid());
 }
}
boolean wpress = false;
boolean dpress = false;
boolean apress = false;
void draw() {
//runs 60 times a second - can alter rate by calling frameRate(rate);  
 background(0);
for(int i=0;i<b.length;i++){
  b[i].show();
 }
 for(int i=0;i<a.size();i++){
  a.get(i).show();
  a.get(i).move();
 }
 x.show();
 x.move();
 if(wpress) x.accelerate(.1);
 if(dpress) x.turn(10);
 if(apress) x.turn(-10);
 for(int i=0;i<a.size();i++){
  //if(dist((float) x.getXCenter(), (float) x.getYCenter(), (float) a.get(i).getXCenter(), (float) a.get(i).getYCenter())<25){
   // a.remove(i);
  //}
 }
 for(int i=0;i<c.size();i++){
  c.get(i).show();
  c.get(i).move();
 }
 for(int i=0;i<c.size()-1;i++){
  for(int q=0;q<a.size();q++){
  if(dist((float) c.get(i).getXCenter(), (float) c.get(i).getYCenter(), (float) a.get(q).getXCenter(), (float) a.get(q).getYCenter())<20){
    a.remove(q);
    c.remove(i);
    break;
  }
 }
   if(c.get(i).getXCenter()>=999 || c.get(i).getXCenter()<=1){
   c.remove(i);
  }
  else if(c.get(i).getYCenter()>=999 || c.get(i).getYCenter()<=1){
   c.remove(i);
  }
 }
}

void keyPressed() {
  //listener for keys to be pressed.  
  //look up processing.org documentation for how to impelement
  if(key == 's'){
    
    }
    if(key == 'w') wpress = true;
    if(key == 'd') dpress = true;
    if(key == 'a') apress = true;
    if(key=='s'){
     x.setSpeeds(); 
     x.randoDir();
     x.randoSpot();
    }
    if(key==' '){
      c.add(new Bullets(x));
      c.get(c.size()-1).accelerate(6);
    }
}
void keyReleased(){
      if(key == 'w') wpress = false; 
      if(key == 'd') dpress = false; 
      if(key == 'a') apress = false; 
      }
