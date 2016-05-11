class cloud extends GameObject
{
 cloud(float x, float y)
{
 super(x,y);
} 
void Update()
{
  pos.x--;
}
void Render()
{
  fill(255);
    ellipse(pos.x,pos.y,50,50);
}
}
