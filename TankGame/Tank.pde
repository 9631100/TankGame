class Tank {
  //Member Variable
  float x, y, w, h, speed, health;
  //PImage iTankW, iTankA, iTankS, iTankD;
  char idir;
  int turretCount, laserCount;

  // Constructor
  Tank() {
    x = 250.0;
    y = 250.0;
    w = 100.0;
    h = 100.0;
    speed = 2.0;
    health = 75.0;
    //iTankW = loadImage("tankW.png");
    //iTankA = loadImage("tankA.png");
    //iTankS = loadImage("tankS.png");
    //iTankD = loadImage("tankD.png");
    idir = 'w';
    turretCount = 1;
    laserCount = 100;
  }

  void display() {
    imageMode (CENTER);
    rect(x,y,w,h);
    //add the direction logic 
    //image(iTankW, x, y);
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
  }
}
