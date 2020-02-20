public class Asteroid extends Floater{
  
  private int rotationSpeed;
  
  public Asteroid(){
  
  corners=15;
  
  xCorners=new int[corners];
  yCorners=new int[corners];
  
  xCorners[0]=6;
  xCorners[1]=4;
  xCorners[2]=5;
  xCorners[3]=-1;
  xCorners[4]=-4;
  xCorners[5]=-2;
  xCorners[6]=-8;
  xCorners[7]=-3;
  xCorners[8]=4;
  xCorners[9]=8;
  
  yCorners[0]=-1;
  yCorners[1]=2;
  yCorners[2]=8;
  yCorners[3]=8;
  yCorners[4]=5;
  yCorners[5]=-2;
  yCorners[6]=2;
  yCorners[7]=-7;
  yCorners[8]=-8;
  yCorners[9]=-4;
  
  myColor=200;
  
  int randomizer= (int) (Math.random()*2);
  int randomizer2= (int) (Math.random()*2);
  
  if(randomizer==0){
   myCenterX=(int) (Math.random()*300);
  }
  else{
   myCenterX=(int) (Math.random()*300+650);
  }
  if(randomizer2==0){
   myCenterY=(int) (Math.random()*300);
  }
  else{
   myCenterY=(int) (Math.random()*300+650);
  }
  myXspeed=Math.random()*5;
  myYspeed=Math.random()*5;
  myPointDirection=0;
  rotationSpeed=(int) (Math.random()*20-10);
  
  
  }
  
  public double getXCenter(){
   return myCenterX;
  }
  public double getYCenter(){
   return myCenterY;
  }
  
  public void move(){
   super.move(); 
   myPointDirection=myPointDirection+rotationSpeed;
  }
}
