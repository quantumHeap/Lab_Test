boolean[] keys = new boolean[512];
int Score;
//int Lives;
ArrayList <Player> players;
int PlayersAmount;

void setup()
{
 size(750,750);
 PlayersAmount = 1;
 players = new ArrayList<Player>();
   for(int i = 0; i < PlayersAmount; i++)
  {
    players.add(new Player(width/2,height/2));
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
 for(int i = 0; i < players.size(); i++)
 {
  Player p = players.get(i);
  p.Update();
  p.Render(); 
 }
}

