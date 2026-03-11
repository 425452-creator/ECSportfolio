// Anders Millican | 25 Feb 2026 | Timeline
void setup() {
 size(950, 400);
}

void draw() {
 background(#8CC3BB);
 drawRef();
 histEvent(110, 310, "April 1707", false, "Euler is born in Basel, Switzerland.", 200);
 histEvent(310, 210, "1727", true, "Euler moves to St. Petersburg to become a member of St. Petersburg Academy of Sciences.", 480 );
 histEvent(380, 310, "1735", false, "Euler loses his right eye, likely from sickness.", 250);
 histEvent(520, 210, "1748", true , "Euler publishes Introdutio in Analysin Infinitorum, one of his greatest works.", 410);
 histEvent(700, 310, "1766", false, "Euler develops a cataract in his left eye, meaning all math after this was done entirely in his head.", 515);
 histEvent(760, 210, "1772", true,  "Euler publishes his second theory of lunar motion.", 280);
 histEvent(870, 310, "September 1783", false, "Euler discovers quadratic reciprocity, foundational to modern number theory.", 425);
 histEvent(870, 210, "1783", true, "Euler dies in St. Petersburg, Russia.", 205);
}

void drawRef() {
  stroke (0);
  textAlign(CENTER);
  textSize(36);
  fill (#4D686B);
  text("Life of Leonhard Eueler", width / 2, 46);
  textSize(20);
  text("by Anders Millican", width / 2, 70);
  textSize(12);
  strokeWeight(3);
  line (26, 260, 924, 260);
  strokeWeight(2);
  for ( int i=25; i<926; i=i+100) {
    line (i, 240, i, 280);
  };
  fill (#294E69);
  text ("1700", 25, 295); 
  text ("1710", 125, 295);
  text ("1720", 225, 295);
  text ("1730", 325, 295);
  text ("1740", 425, 295);
  text ("1750", 525, 295);
  text ("1760", 625, 295);
  text ("1770", 725, 295);
  text ("1780", 825, 295);
  text ("1790", 925, 295); 
  
}

void histEvent( int x, int y, String title, boolean top, String detail, int detailw) {
  stroke (0);
  if (top==true) {
   line(x,y,x-15,y+50);
  } else {
   line(x,y,x-15,y-50);
  }
  rectMode(CENTER);
  stroke(#DC7252);
  strokeWeight (2);
  fill (#1E4E43);
  rect(x,y, 100, 20, 5, 5, 5, 5);
  fill (#DC7252);
  textAlign(CENTER);
  text(title, x, y+4, 5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-10 && mouseY < y+10){
    rectMode(CENTER);
    stroke(#DC7252);
    strokeWeight (2);
    fill (#1E4E43);
    rect(width/2, 345, detailw, 20);
    fill(#DC7252);
    text(detail, width/2, 350);
    
  }
}
