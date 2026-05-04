class Obstacle {
  //Member Variable
  float x, y, w, h, speed, health;
  //PImage obs1;
  char idir;

  // Constructor
  Obstacle(float x, float y, float w, float h, float speed, float health) {
    this.x = x;
    this.x = y;
    this.x = w;
    this.x = h;
    this.x = speed;
    this.health = health;
    idir = 'w';
  }

  void display() {
    fill(128);
    rect(x, y, w, h);
  }

  void move() {
  }
}
