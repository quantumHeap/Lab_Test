class Player extends GameObject
{
  
   Player(float x, float y)
  {
   super(x,y);
   
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
  }
  void Render()
  {
    fill(255);
    stroke(255);
    pushMatrix();
    translate(pos.x,pos.y);
    rectMode(CENTER);
    triangle(0, -halfW, halfW, halfW, - halfW, halfW);
    popMatrix();
  }
}
