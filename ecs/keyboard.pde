// Anders Millican | 4 Mar 26 |
int x;
int y;
int tx, ty, score;
float tw;
int fx;
PImage character;
PImage characterright;
PImage sword;

void setup (){
  size (500, 500);
  x = width/2;
  y = height/2;
  ty = int(random(20, width-20));
  tx = int(random(20, height-20));
  tw = 100;
  score=0;
  character = loadImage("Character.png");
  character.resize(0,100);
  characterright = loadImage("character-right.png");
  character.resize(0,100);
  sword = loadImage("sword.png");
  sword.resize(0,50);
  fx=width;
}





void draw () {
 background (127);
 
 fill (255);
 target ();
 imageMode(CENTER);

 image(character, x, y);
 target ();
 scorePanel();
 
 
}
void target () {
  float d=dist (x,y,tx,ty);
  if (d<10) {
    score=score+1;
     ty = int(random(20, width-20));
     tx = int(random(20, height-20));
     tw=100;
  }
  rectMode(CENTER);
  //rect(tx, ty, tw, tw);
  if(tw<10){
    gameOver();
    tw=0;
  }
  image (sword, tx, ty, tw, tw);
  tw=tw-0.1;
  
 }

void scorePanel() {
  rectMode(CENTER);
  fill(127, 127);
  rect(width/2, 15, width, 30);
  fill (255,0,0);
  textSize(20);
  text("Score:" +score, 20, 25);
}

void gameOver() {
  background(100);
  fill (0, 255, 0);
  textMode(CENTER);
  textSize(50);
  text("GAME OVER", width/2-120, height/2);
  image (character, fx, 440);
  fx=fx-3;
  
}

void keyPressed () {
  if (x > width-20) {
    x=width-20;
  } 
  if (x < 20) {
    x = 20;
  } 
  if (y > height-20) {
    y=height-20;
  } 
  if (y < 20) {
    y= 20;
  } 
  
  //wasd and arrows
  if (key == 'w' || key == 'W' ||keyCode == UP) {
    y = y-10; 
  } else if(key=='s' || key=='S' || keyCode == DOWN) {
    y = y+10;
    }
     if (key == 'a' || key == 'A' || keyCode == LEFT) {
    x = x-10; 
  } else if(key=='d' || key=='D' || keyCode == RIGHT) {
    x = x+10;
    }
}
    
