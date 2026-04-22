class Button {
  // Member vars
  int x, y, w, h, fr, fg, fb;
  String label;

  //Constructor
  Button(int x, int y, int w, int h, int fr, int fg, int fb, String label) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.fr=fr;
    this.fg=fg;
    this.fb=fb;
    this.label=label;
  }

  void display() {
    textSize(10);
    if(isMouseOver()) {
      fill(fr, fg, fb, 100);
    }else{
      fill(fr,fg,fb);
    }
    rectMode(CENTER);
    rect(x,y,w,h,5);
    fill(255);
    textAlign(CENTER, CENTER);
    text(label, x, y);
  }

  boolean isMouseOver() {
    return mouseX>x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2;
  }

  boolean wasClicked() {
    return true;
  }
}
