Spaceship bruno;
ArrayList<Asteroid> huck = new ArrayList <Asteroid>();
Star[] stars = new Star[100];
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < 5; i++)
  huck.add(new Asteroid());
  bruno = new Spaceship();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  bruno.move();
  bruno.show();
 for (int i = 0; i < huck.size(); i++)
 {
  float d = dist(huck.get(i).getX(), huck.get(i).getY(), bruno.getX(), bruno.getY());
   if (d < 20){
   huck.remove(i);
   i--;
   }
   else{
  huck.get(i).move();
  huck.get(i).show();
   }
}
}
public void keyPressed()
{
  if (key == 'a') {
    bruno.turn(-10);
  }
  if (key == 'd') {
    bruno.turn(10);
  }
  if (key == 'w') {
    bruno.accelerate(0.5);
  }
  if (key == 'h') {
    bruno.hyperspace();
  }
}
