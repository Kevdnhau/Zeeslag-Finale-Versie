class Tijd
{
  PFont lettertype;
  float Tijd;

  
  Tijd(float set) {
    Tijd = set;
  }
  void setup2() {
    lettertype = loadFont("Times-Italic-48.vlw");
  }
  float getTime() {
    return(Tijd);
  }
  void zetTijd(float set) {
    Tijd = set;
  }
  void telnaarbeneden() {
    if(Tijd > 0.025) {
    Tijd -= 1/frameRate;
    }
    else {
      textFont(lettertype, 32);
      fill(169,69, 169);
      text("Succes!", 754, 138);
      fill(0,0,0,0);
    }
    
  }
  void teksttimer() {
    textSize(35);
    text(startTimer.getTime(), 742, 137);
    
  }
  /*void teksttimer2() {
    delay(1000);
    textFont(lettertype, 32);
    fill(220,69, 120);
    text("Niet spieken!", 754, 138);
  }*/
  
  
}