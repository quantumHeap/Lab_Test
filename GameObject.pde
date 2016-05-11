class GameObject
{
  PVector Pos;
  PVector forward;
  PVector velocity;
  float Width;
  float theta;
  float speed;
  color c;
  
 GameObject(float x, float y)
{
 pos = new PVector(x,y);
 forward = new PVector(0,-1);
 velocity = new PVector(0,0);
 Width = 50.0f;
} 
  public void Update()
  {
    
  }
  public void Render()
  {
    
  }
}
