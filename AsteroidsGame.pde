Spaceship bruno;
Star[] stars = new Star[100];
public void setup() 
{
  size(500, 500);
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
