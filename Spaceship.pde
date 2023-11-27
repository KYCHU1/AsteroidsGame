class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = color(255);
    myCenterX = 100;
    myCenterY = 100;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 180;
  }
    //your code here
}
