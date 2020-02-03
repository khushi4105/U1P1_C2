class circle
{
  float _x;
  float _y;
  float _velocityX;
  float _velocityY;
  color _color = color(random(0, 255), random(0, 255), random(0, 255));

  circle()
  {
    _x = random(0, 500);
    _y = random(0, 500);
    _velocityX = random(-4, 4);
    _velocityY = random(-4, 4);
  }

  circle(float x, float y, float xvel, float yvel)
  {
    _x = _x;
    _y = _y;
    _velocityX = xvel;
    _velocityY = yvel;
  }

  void Move()
  {
    _x = _x + _velocityX;
    _y = _y + _velocityY;
  }

  void Draw()
  {
    fill(_color);
    ellipse( _x, _y, 20, 20);
  }

  void Bounce()
  {
    if (_x > 500)
    {
      _velocityX = _velocityX * -1;
    }

    if (_x < 0)
    {
      _velocityX = _velocityX* -1;
    }

    if (_y > 500)
    {
      _velocityY = _velocityY* -1;
    }

    if (_y < 0)
    {
      _velocityY = _velocityY*-1 ;
    }
  }

  void Update()
  {
    Move();
    Draw();
    Bounce();
  }
}
