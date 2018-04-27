public boolean toonControls = false;


class Controls {  
  public void runControls () {
    checkBox();
    showControls();
  }
  private void checkBox() {
    if (mousePressed && mouseX > 700 && mouseX < 900 && mouseY > 175 && mouseY < 225) {
      toonControls = true;
    }
    if (keyPressed) {
      if (toonControls == true && key == 'e' || key == 'E') {
        toonControls = false;
      }
    }
  }


  public void showControls() {
    if (toonControls == true) {
      fill(125);
      rect(0, 0, 1600, 1000);
      fill(255);
      textSize(50);
      textAlign(LEFT);
      text("TOETS BINDINGEN", 50, 50);   
      textSize(25);
      textAlign(LEFT);
      text("Het doel van het spel is ontdekken waar de tegenspeler de schepen op zijn grid geplaatst heeft. ", 50, 100);
      text("Dit gebeurt door ‘bommen af te vuren’ op de boten van de tegenspeler.", 50, 135);
      text("Wie eerst alle boten van zijn tegenstander geraakt heeft, wint.", 50, 170);
      
      textSize(50);
      textAlign(LEFT);
      text("CONTROLS", 50, 270);
      
      textSize(25);
      textAlign(LEFT);
      text("Druk op 'E' om uw de regels en toetsbindingenscherm te sluiten.", 50, 320) ;
      text("Gebruik de muis om boten te verplaatsen.", 50, 355);
      text("Druk op 'H' om de boot horizontaal te draaien, druk op 'V' om de boot verticaal terug te draaien", 50, 390);
      text("Druk op 'P' om uw boot te plaatsen.", 50,425);
      text("Druk op 'M' de achtergrondmuziek te laten afspelen.", 50, 460) ;  
    }
  }
}