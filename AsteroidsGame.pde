//your variable declarations here
Spaceship jenny = new Spaceship();
Star[] nightSky = new Star[300];
ArrayList <Asteroid> jen = new ArrayList <Asteroid> ();
ArrayList <Bullet> shots = new ArrayList<Bullet>();
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
  for (int i = 0; i<jen.size(); i++){
    jen.get(i).move();
    jen.get(i).show();
    float d = dist((float)jenny.myCenterX, (float)jenny.myCenterY, (float)jen.get(i).myCenterX, (float)jen.get(i).myCenterY);
    if (d<10){
    jen.remove(i);
    }
  }
  for (int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
  for(int i = 0; i < shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
    for(int j = 0; j < jen.size(); j++){
      float f = dist((float)shots.get(i).myCenterX, (float)shots.get(i).myCenterY, (float)jen.get(j).myCenterX, (float)jen.get(j).myCenterY);
    if (f<10){
    jen.remove(j);
    }
    }
   }
  //your code here
}

public void keyPressed(){
  if (key == 's'){
    jenny.accelerate(-0.5);
  }
  if (key == 'w'){
    jenny.accelerate(0.5);
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
  if (key == ' '){
    shots.add(new Bullet(jenny));
  }
}
