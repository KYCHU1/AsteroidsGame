class Bullet extends Floater{
  public Bullet(Spaceship jenny){
    myCenterX = jenny.getX();
    myCenterY = jenny.getY();
    myXspeed = jenny.myXspeed;
    myYspeed = jenny.myYspeed;
    myPointDirection = jenny.getPointDirection();
    accelerate(0.6);
  }
  public void show(){
     fill((int)Math.random()*255,(int)Math.random()*255,(int)Math.random()*255);
    ellipse((float)myCenterX, (float)myCenterY,5,5);
  }
}
