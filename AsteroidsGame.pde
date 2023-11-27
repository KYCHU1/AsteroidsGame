//your variable declarations here
Spaceship jenny = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  //your code here
}
public void draw() 
{
  background(0);
  jenny.move();
  jenny.show();
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  //your code here
}

public void keyPressed(){
  if (key == 'w'){
    jenny.myXspeed = jenny.myXspeed +1;
  }
  if (key == 's'){
    jenny.myXspeed = jenny.myXspeed -1;
  }
  if (key == 'a'){
    jenny.myPointDirection = jenny.myPointDirection -20;
  }
  if (key == 'd'){
    jenny.myPointDirection = jenny.myPointDirection +20;
  }
}
