boolean[] keys = new boolean[512];
int Score;
//int Lives;
ArrayList <Player> players;
int PlayersAmount;
ArrayList<Plane> planes;
int PlaneAmount;
ArrayList<Sky> sky;
int SkyAmount = 1;
ArrayList<Ground> ground;
int GroundAmount  = 1;

void setup()
{
 size(750,750);
 PlayersAmount = 1;
 PlaneAmount = 1;
 SkyAmount = 1;
 GroundAmount = 1;
 players = new ArrayList<Player>();
 planes = new ArrayList<Plane>();
 sky = new ArrayList<Sky>();
 ground = new ArrayList<Ground>();
   for(int i = 0; i < PlayersAmount; i++)
  {
    players.add(new Player(width/2,height/2));
  }
  for(int i = 0; i < PlaneAmount; i++)
  {
    planes.add(new Plane(width/4, height/4));
  }
  for(int i = 0; i < SkyAmount; i++)
  {
    sky.add(new Sky(width,height));  
  }
  for(int i = 0; i < GroundAmount; i++)
 {
    ground.add(new Ground(width,height/2));
 } 
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
 for(int i = 0; i <sky.size(); i++)
 {
   Sky s = sky.get(i);
   s.Render();
   s.Update();
 }
 for(int i = 0; i < ground.size(); i ++)
 {
   Ground gr = ground.get(i);
   gr.Render();
   gr.Update();
 }
 
 for(int i = 0; i < planes.size(); i++)
 {
  Plane plane = planes.get(i);
  plane.Update();
  plane.Render(); 
 }
 for(int i = 0; i < players.size(); i++)
 {
  Player p = players.get(i);
  p.Update();
  p.Render(); 
 }
}

