int startX = 250;
int startY = 250;
int endX = 250;
int endY = 250;
int counter = 0;
 
void setup()
{
  size(500,500);
  background(135,206,235);
  strokeWeight(2);
}
void draw()
{
  stroke(255,255,0);
  if (endY < 500 && endX < 500)
  {
    while(counter < 20)
    {
    endX = startX + (int)(Math.random()*50 - 25);
    endY = startY + (int)(Math.random()*50 - 25);
    line(startX,startY,endX,endY);
    
    ellipse(endX,endY,5,5);
    counter = counter + 1;
    }
    startX = endX;
    startY = endY;
    counter = 0;
    
  }
}
void mousePressed()
{
  background(135,206,235);
  startX = 250;
  startY = 250;
  endX = 250;
  endY = 250;
  counter = 0;
}

