class Ground extends GameObject
{
   Ground(float x, float y)
  {
   super(x,y);
  } 
  
color GroundBrown = color(149,113,44);

  void Render()
  {
    noStroke();
    fill(GroundBrown);
    pushMatrix();
//   translate(pos.x,pos.y);
    rectMode(CENTER);
    rect(width/2, height/4 *3 , width, height/2);
    popMatrix();
  }
}
