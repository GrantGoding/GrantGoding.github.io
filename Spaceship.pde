public class Spaceship extends Floater{
  public  Spaceship(){
  corners=15;
  
  xCorners=new int[corners];
  yCorners=new int[corners];
  
  xCorners[0]=12;
  xCorners[1]=-3;
  xCorners[2]=0;
  xCorners[3]=0;
  xCorners[4]=-12;
  xCorners[5]=-12;
  xCorners[6]=-6;
  xCorners[7]=-9;
  xCorners[8]=-6;
  xCorners[9]=-12;
  xCorners[10]=-12;
  xCorners[11]=0;
  xCorners[12]=0;
  xCorners[13]=-3;
  xCorners[14]=12;
  
  yCorners[0]=1;
  yCorners[1]=6;
  yCorners[2]=6;
  yCorners[3]=9;
  yCorners[4]=9;
  yCorners[5]=6;
  yCorners[6]=6;
  yCorners[7]=0;
  yCorners[8]=-6;
  yCorners[9]=-12;
  yCorners[10]=-9;
  yCorners[11]=-9;
  yCorners[12]=-6;
  yCorners[13]=-6;
  yCorners[14]=-1;
  
  myColor=200;
  myCenterX=500;
  myCenterY=500;
  myXspeed=0;
  myYspeed=0;
  myPointDirection=0;
  
  
  
  }
  
  public void setSpeeds(){
    myXspeed=0;
    myYspeed=0;
  }
  public void randoDir(){
    myPointDirection=Math.random()*360;
  }
  public void randoSpot(){
    myCenterX=Math.random()*1000;
    myCenterY=Math.random()*1000;
  }
  public double getXCenter(){
   return myCenterX;
  }
  public double getYCenter(){
   return myCenterY;
  }
  public double getXSpeed(){
   return myXspeed;
  }
  public double getYSpeed(){
   return myYspeed;
  }
  public double getDirection(){
   return myPointDirection;
  }
}
