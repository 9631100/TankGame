// 1 April 2026 | TankGame by Gaby Orozco
Tank t1;

void setup() {
  size(500, 500);
  bg = loadImage(
  t1 = new Tank();
  o1 = new Obstacle(400,100,100,50,5,100);
}

void draw() {
  background(127);
  imageMode (CORNER);
  image(bg,0,0)
  t1.display();
  o1.display();
  o1.move();
}

void keyPressed() {
  if (key == 'w') {
    t1.move('w');
  } else if (key == 's') {
    t1.move('s');
  } else if (key == 'd'){
    t1.move('d'); 
  } else if (key == 'd'){
    t1.move('a');
  }
}
