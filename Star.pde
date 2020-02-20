public class Star {
  
  private int X;
  private int Y;

  public Star() {
  X=(int) (Math.random()*1000);
  Y=(int) (Math.random()*1000);
  }
  
  public void show() {
  fill(255);
  ellipse(X,Y,4,4);
  }
  
}
