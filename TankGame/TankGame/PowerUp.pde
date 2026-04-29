Class PowerUp {
// Member Variable
Float x, y, w, h, speed;
//PImage obs1;
Char type;

//Constructor
PowerUp () {
w = 100;
h = 100;
Speed = 5;

If (int( random(4))==2) {
type = ‘h’;
x = random (width);
y = -100;
} else if (int(random(3))==10{
  type = 't';
  x = random(width);
  y = -100;
} else {
  type = 'a';
  x = random(width);
  y = -100;
}
}


Void display () {
if(type == ‘h’) {
Fill (0, 200,0);
ellipse(x,y,w,h);
fill(255);
textAlign (CENTER);



Void move() {
Switch


boolean intersect











//Displays and removes powerups
for (int i = 0; i < powerups.size(); i **){
  PowerUp pu = powerups.get(i);
  pu.display();
  pu.move(); 
  if (pu.reachedEdge()) {
    powerups.remove (pu);
  }
  if (pu.intersect(t1)) {
    //Turret
    if 
