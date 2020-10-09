int total;
void setup()
{
  size(400,400);
  noLoop();
}
void draw()
{
  background(255,182,193);
  for(int y = 20; y <= 330; y+=120)
  {
    for(int x = 20; x <= 330; x+=120)
    {
      Die joe = new Die(x,y);
      joe.show();
    }    
  }
  text("Total - " +total, 200, 390);
}
void mousePressed()
{
  redraw();
  total = 0;
}
class Die
{
  int myX, myY, dots;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    dots = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255);
    rect(myX,myY,100,100);
    fill(0);
    if(dots==1)
    {
      ellipse(myX+50,myY+50,20,20);
      total+=1;
    }
    if(dots==2)
    {
      ellipse(myX+50,myY+30,20,20);
      ellipse(myX+50,myY+70,20,20);
      total+=2;
    }
    if(dots==3)
    {
      ellipse(myX+50,myY+20,20,20);
      ellipse(myX+50,myY+50,20,20);
      ellipse(myX+50,myY+80,20,20);
      total+=3;
    }
    if(dots==4)
    {
      ellipse(myX+30,myY+30,20,20);
      ellipse(myX+70,myY+30,20,20);
      ellipse(myX+30,myY+70,20,20);
      ellipse(myX+70,myY+70,20,20);
      total+=4;
    }
    if(dots==5)
    {
      ellipse(myX+30,myY+30,20,20);
      ellipse(myX+70,myY+30,20,20);
      ellipse(myX+50,myY+50,20,20);
      ellipse(myX+30,myY+70,20,20);
      ellipse(myX+70,myY+70,20,20);
      total+=5;
    }
    if(dots==6)
    {
      ellipse(myX+30,myY+20,20,20);
      ellipse(myX+30,myY+50,20,20);
      ellipse(myX+30,myY+80,20,20);
      ellipse(myX+70,myY+20,20,20);
      ellipse(myX+70,myY+50,20,20);
      ellipse(myX+70,myY+80,20,20);
      total+=6;
    }
  }
}
