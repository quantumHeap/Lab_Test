class Drop_Item extends GameObject
{
  color DropColor = color(183,39,82);
 Drop_Item(float x, float y)
{
 super(x,y);
} 
  void Update()
  {
    pos.y--;
  }
  void Render()
  {
    fill(DropColor);
    rect(pos.x, pos.y -halfW, halfW, halfW);
  }
}
