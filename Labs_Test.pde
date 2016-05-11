boolean[] keys = new boolean[512];
int Score;
int Lives;

void setup()
{
 size(750,750);
 
}
void keyPressed()
{
 keys[keyCode] = true; 
}
void keyReleased()
{
  keys[keyCode] = false;
}
void draw()
{
 background(125);
 
}

