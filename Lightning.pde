void setup()
{
  size(400,400);
  strokeWeight(3);
  background(0,0,0);

}

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int colorx = 255;

void draw()
{
  stroke(((float)Math.random()*255 + 1) + colorx,((float)Math.random()*255 + 1) + colorx,
  ((float)Math.random()*255 + 1) + colorx);
  while (true) {
    endX = startX + (int)(Math.random()*9+1);
    endY = startY + (int)(Math.random()*19-9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    
    if (endX > 400) {
    break;
  }
  }
  

}
void mousePressed()
{
startX = 0;
startY = 150;
endX = 0;
endY = 150;
colorx += -3;
}

