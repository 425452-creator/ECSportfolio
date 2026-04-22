// Anders Millican | 25 March 2026 | Stopwatch
import processing.sound.*;
SoundFile alarm;
Button btnStop, btnStart, btnSwStart, btnSwStop, btnSeconds, btnReset;
int bw, bh, bcw, bch;
int Ttot, Tint, Tleft;
boolean running;

void setup() {
  size (1200, 500);
  alarm = new SoundFile(this, "Blackened.mp3");
  surface.setResizable(true);
  Ttot=10;
  Tint=0;
  running = false;
}

void draw() {
    background(0);
  if(running == true) {
    int elapsed = (millis()-Tint)/1000;
    Tleft = Ttot- elapsed;
    
    if(Tleft<=0) {
    Tleft=0;
    running=false;
    alarm.play();
    
    }
  }
  

  
  int bw=width/6;
  int bh=(bw/10)*2;
  int bcw=bw/2;
  int bch=height-bh/2;
  btnStop=new Button(bcw, bch, bw, bh, 180, 0, 0, "Stop");
  btnStart=new Button(bcw+bw, bch, bw, bh, 0, 180, 0, "Start");
  btnSwStart=new Button(bcw+2*bw, bch, bw, bh, 180, 0, 0, "Start Stopwatch");
  btnSwStop=new Button(bcw+3*bw, bch, bw, bh, 180, 0, 0, "Stop Stopwatch");
  btnSeconds=new Button(bcw+4*bw, bch, bw, bh, 180, 0, 0, "Seconds");
  btnReset=new Button(bcw+5*bw, bch, bw, bh, 180, 0, 0, "Reset");
  

  btnStop.display();
  btnStart.display();
  btnSwStart.display();
  btnSwStop.display();
  btnSeconds.display();
  btnReset.display();
  
  fill(255,0,0);
     textSize((width/2)/2);
     text(+Tleft, width/2, height/2);
}

void mousePressed(){
  if(btnStart.isMouseOver() == true || btnStop.isMouseOver() == true|| 
  btnReset.isMouseOver() == true){
       if(btnStart.isMouseOver() == true) {
          running=true;
       }else if (btnStop.isMouseOver() == true){
         running= false;
       } else if (btnReset.isMouseOver() == true){
         Tint = millis();
       }
  }else if(btnSwStart.isMouseOver() == true||btnSwStop.isMouseOver() == true){
       if(btnSwStart.isMouseOver() == true){
         Tint=millis();
       }else if(btnSwStop.isMouseOver() == true){
         Tleft=millis()-Tint;
       }
  }
}
