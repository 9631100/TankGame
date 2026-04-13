class Tank {
  //Member Variable
  float x, y, w, h, speed, health;
  PImage iTankW, iTankA, iTankS, iTankD,;
  char idir;

  // Constructor
  Tank() {
    x = 100.0;
    y = 100.0;
    w = 100.0;
    h = 100.0;
    speed = 2.0;
    health = 75.0;
    iTank = loadImage("tankW.png");
    iTank = loadImage("tankA.png");
    iTank = loadImage("tankS.png");
    iTank = loadImage("tankD.png");
    idir = 'w';
  }

  void display() {
    imageMode (CENTER);
    image(iTank, x, y);
  }

  void move(char dir) {
    if (dir == 'w') {
      idir = 'w';
      y = y - speed;
    } else if (dir == 's') {
      y = y + speed;
    } else if (dir == 'a') {
      x = x - speed;
    } else if (dir == 's') {
       x = x + speed;
    }
