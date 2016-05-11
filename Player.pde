class Player extends GameObject
{
  
   Player(float x, float y)
  {
   super(x,y);
   speed = 100.0f;
  }
  int lives = 3;
  color PlayerPink = color(238,110,252);
  
  void Update()
  {
    forward.x = sin(theta);
    forward.y = -cos(theta);
    velocity.x = forward.x;
    velocity.y = forward.y;
    velocity.mult(speed);
    InputMovement();
  }
  void InputMovement()
  {
    if(keys[UP])
    {
     pos.y--; 
    }
    if(keys[DOWN])
    {
      pos.y++;
    }
    if(keys[LEFT])
    {
     pos.x--; 
    }
    if(keys[RIGHT])
    {
     pos.x++; 
    }
    if(pos.x <= 0)
    {
      pos.x = 0;
    }
    if(pos.x >= width - halfW)
    {
     pos.x = width; 
    }
    if(pos.y <= height/2 - halfW)
    {
     pos.y = height/2 - halfW; 
    }
    if(pos.y >= height - halfW)
    {
     pos.y = height - halfW; 
    }
  }
  void Render()
  {
    fill(PlayerPink);
    stroke(255);
    pushMatrix();
    translate(pos.x,pos.y);
    rectMode(CENTER);
    triangle(0, -halfW, halfW, halfW, - halfW, halfW);
    popMatrix();
  }
}
