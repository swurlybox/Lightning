int startX = 250;
int startY = 0;
int endX = 250;
int endY = 0;
int StrokeWeight = 30;
float opacity = 126;

void setup()
{
  size(500,500);
  background(50);
  strokeWeight(StrokeWeight);
}
void draw()
{
  if (endY < 500 && endX < 500)
    {
    stroke(255,255,0);
    strokeWeight(StrokeWeight);
    endX = startX + (int)(Math.random()*100 - 50);
    endY = startY + (int)(Math.random()*50 + 20);
    line(startX,startY,endX,endY);
    StrokeWeight = StrokeWeight - 2;
    }
    startX = endX;
    startY = endY;
    
  }

void mousePressed()
{
  stroke(50);
  fill(50,50,50,127);
  rect(0,0,500,500);
  stroke(255,255,0);
  startX = (int)(Math.random()*400+50);
  startY = 0;
  endX = startX;
  endY = startY;
  StrokeWeight = 30;
}
