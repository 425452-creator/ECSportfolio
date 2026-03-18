// Anders Millican | 10 March 2026 | Breakable Wall
int tx, ty;
boolean mouseClicked;
int score;

void setup() {
 ty = int(random(20, width-20));
 tx = int(random(20, height-20));
 size (500, 500);
 score=0;
 
}

void draw() {
  background (0);
  fill (255,0,0);
  target ();
  text ("Score" +score, 20, 20);
}

void target () {
  float d=dist (mouseX, mouseY,tx,ty);
  if (d<50 && mouseClicked == true) {
     ty = int(random(20, width-20));
     tx = int(random(20, height-20));
     mouseClicked = false;
     score = score +1;
  }
  ellipse(tx, ty, 100, 100);
  
}

void mouseClicked () {
  mouseClicked = true;
}
