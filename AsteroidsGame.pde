//your variable declarations here
Spaceship jenny = new Spaceship();
Star[] nightSky = new Star[300];
ArrayList <Asteroid> jen = new ArrayList <Asteroid> ();
public void setup() 
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
  for( int i = 0; i < 5; i++){
  jen.add(new Asteroid());
  }
}

  //your code here
public void draw() 
{
  background(0);
  jenny.move();
  jenny.show();
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for (int i = 0; i < 5; i++){
    jen.get(i).show();
  }
  for (int i = 0; i < 5; i++){
    jen.get(i).move();
  }
  //your code here
}

public void keyPressed(){
  if (key == 's'){
    jenny.myYspeed = jenny.myYspeed +1;
  }
  if (key == 'w'){
    jenny.myYspeed = jenny.myYspeed -1;
  }
  if (key == 'a'){
    jenny.myPointDirection = jenny.myPointDirection -20;
  }
  if (key == 'd'){
    jenny.myPointDirection = jenny.myPointDirection +20;
  }
  if (key == 'h'){
    int centerX = (int)(Math.random()*500);
    int centerY = (int)(Math.random()*500);
    jenny.myCenterX = centerX;
    jenny.myCenterY = centerY;
  }
}
