// 1 April 2026 | TankGame by Gaby Orozco
PImage bg;
Tank t1;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
ArrayList<Projectile> projectiles = new ArrayList<Projectile>();
ArrayList <PowerUp> powerups = new ArrayList<PowerUp>();
int score;
Timer objTimer, puTimer;

void setup() {
  size(500, 500);
  score = 0;
  //bg = loadImage();
  t1 = new Tank();
  objTimer = new Timer(1000);
  objTimer.start();
}

void draw() {
  background(127);
  imageMode(CORNER);
  //image(bg, 0, 0);
  for (int i = 0; i < projectiles.size(); i++) {
    Projectile p = projectiles.get(i);
    for (int j = 0; j < obstacles.size(); j++) {
      Obstacle o = obstacles.get(j);
      if (p.intersect(o)) {
        score = score + 100;
        projectiles.remove(i);
      }
    }
    p.display();
    p.move();
  }

  //Distribute object on timer
  if (objTimer.isFinished()) {
    // Add object
    obstacles.add(new Obstacle(-100, 200, 100, 100, int(random(1, 10)), 10));
    // Restart Timer
    objTimer.start();
  }

  for (int i = 0; i < obstacles.size (); i++) {
    Obstacle o = obstacles.get(i);
    o.display();
    o.move();
  }



  t1.display();
  scorePanel();
}

void keyPressed() {
  if (key == 'w') {
    t1.move('w');
  } else if (key == 's') {
    t1.move('s');
  } else if (key == 'd') {
    t1.move('d');
  } else if (key == 'd') {
    t1.move('a');
  }
}

void mousePressed() {
  projectiles.add(new Projectile(t1.x, t1.y, 4, 10));
}


void scorePanel() {
  fill(127, 200);
  rectMode(CENTER);
  noStroke();
  rect(width/2, 15, width, 30);
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Score:" + score, width/2, 25);
  text("Health:" + t1.health, width/2-150, 25);
  text("Amno:" + t1.laserCount, width/2-150, 25);
}
