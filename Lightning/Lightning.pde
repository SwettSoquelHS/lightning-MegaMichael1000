int startX = 0;
int startY = 150;
int startZ = 0;
int endX = 0;
int endY = 150;
int endZ = 0;
void setup()
{
  size(800,500,P3D);
  strokeWeight(10);
  background(0);
}

void draw()
{
  stroke(random(255), random(255), random(255));
  while(endX < 800) {
    endX = startX + (int)Math.random() + 9;
    endY = startY + (int)((Math.random()*30)-15);
    endZ = startZ + (int)((Math.random()*100)-50);
    line(startX, startY, startZ, endX, endY, endZ);
    startX = endX;
    startY = endY;
    startZ = endZ;
  }
}

void mousePressed()
{
  startX = 0;
  startY = 150 + (int)((Math.random() * 300)-50);
  startZ = 0;
  endX = 0;
  endY = 150;
  endZ = 0;
}
