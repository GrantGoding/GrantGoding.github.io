public class Bullets extends Floater{
  
  public Bullets(Spaceship theShip){
    
    myCenterX=theShip.getXCenter();
    myCenterY=theShip.getYCenter();
    myXspeed=theShip.getXSpeed();
    myYspeed=theShip.getYSpeed();
    myPointDirection=theShip.getDirection();
    
    
  }
  public void show (){             
    fill(255);   
    ellipse((float) myCenterX,(float) myCenterY,2,2);
  } 
  public double getXCenter(){
   return myCenterX;
  }
  public double getYCenter(){
   return myCenterY;
  }
}
