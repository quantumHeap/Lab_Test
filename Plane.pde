class Plane extends GameObject
{
  float radius = 30;;
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
  public boolean DropTheItem(ArrayList<Plane> planes)
 {
   for(Plane plane : planes)
   {
      PVector DropPosition = new PVector(width/2,height/4);
      PVector dist = PVector.sub(DropPosition, plane.pos);
      if(dist.mag() < plane.radius)
      {
        Drops.add(new Drop_Item(pos.x,pos.y));
        return true;
      }
   }
   return false;
 } 
}
