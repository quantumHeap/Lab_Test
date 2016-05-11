class Sky extends GameObject
{
  
   Sky(float x, float y)
  {
   super(x,y);
  }
  
color SkyBlue = color(66,164,242);

  void Render()
  {
    noStroke();
    fill(SkyBlue);
    pushMatrix();
  //  translate(pos.x,pos.y);
    rectMode(CENTER);
    rect(width/2, height/4 , width, height/2);
    
    popMatrix();
  }
}
