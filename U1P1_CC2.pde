//This is my first project in which I am simply practicing arrays, classes & collisions 

circle round[] = new circle[20];


void setup()
{
  size(500, 500);

  for (int i = 0; i<20; i++)
  {
    round[i] = new circle();
  }
}


void draw()
{
  background(0, 0, 0);

  for (int i = 0; i<20; i++)
  {
    round[i].Update();
  }

  for (int i =0; i<round.length; i++)
  {
    for (int j=0; j<round.length; j++)
    {
      if (i!=j)
      {
        float d=dist(round[i]._x, round[i]._y, round[j]._x, round[j]._y);
        {
          if (d < 20)
          {
            round[i]._velocityX = round[i]._velocityX *-1;
          }
        }
      }
    }
  }
}
