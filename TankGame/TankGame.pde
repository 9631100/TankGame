// 1 April 2026 | TankGame by Gaby Orozco
Tank t1;

void setup() {
  size(500, 500);
  t1 = new Tank();
}

void draw() {
  background(127);
  t1.display();
}

void keyPressed() {
  if (key == 'w') {
    t1.move('w');
  } else if (key == 's') {}
}
