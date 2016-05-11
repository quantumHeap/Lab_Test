class Plane extends GameObject
{
  
   Plane(float x, float y)
  {
   super(x,y);
  }
  
  color PlaneOrange = color(232,182,56);
  
  void Update()
  {
  //  forward.x = sin(theta);
 //   forward.y = -cos(theta);
    velocity.x = forward.x;
   velocity.y = forward.y;
   velocity.mult(speed);
   pos.x++;
   if(pos.x >= width + halfW)
   {
    pos.x = 0; 
   }
  }

  void Render()
  {
    fill(PlaneOrange);
    stroke(1);
    pushMatrix();
    translate(pos.x,pos.y);
    rectMode(CENTER);
    rect(0, -halfW, halfW, halfW);
    triangle(0, -halfW, halfW, halfW, - halfW, halfW);
    popMatrix();
  }
}
