class Projectile {
  //Member Variable
  float x, y, w, h, speed;
  float vx, vy;
  char dir;

  // Constructor
  Projectile(float x, float y, float vx, float vy) {
    this.x = x;
    this.x = y;
    this.x = w;
    this.x = h;
    speed = 10;
    dir = 'u' ;
  }

  void display() {
    fill(255, 0, 0);
    rect (x, y, w, h);
  }

  void move() {
    x += vx;
    y += vy;
  }

  boolean intersect (Obstacle o) {
    float distance = dist(x, y, o.x, o.y);
    if (distance < 100) {
    } else {
      return false;
  }
 }
}
