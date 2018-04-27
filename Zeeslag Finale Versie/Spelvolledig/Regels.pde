public boolean toonRegels = false;


class Regels {  
  public void runRegels () {
    checkBox();
    showRules();
  }
  private void checkBox() {
    if (mousePressed && mouseX > 700 && mouseX < 900 && mouseY > 250 && mouseY < 300) {
      toonRegels = true;
    }
    if (keyPressed) {
      if (toonRegels == true && key == 'e' || key == 'E') {
        toonRegels = false;
      }
    }
  }


  public void showRules() {
    if (toonRegels == true) {
      fill(125);
      rect(0, 0, 1600, 1000);
      fill(255);
      textSize(50);
      textAlign(LEFT);
      text("REGELS", 50, 50);   
      textSize(20);
      textAlign(LEFT);
      text("Het doel van het spel is ontdekken waar de tegenspeler de schepen op zijn grid geplaatst heeft. ", 50, 100);
      text("Dit gebeurt door ‘bommen af te vuren’ op de boten van de tegenspeler.", 50, 135);
      text("Wie eerst alle boten van zijn tegenstander geraakt heeft, wint.", 50, 170);
      textSize(30);
      textAlign(LEFT);
      text("BEGIN", 50, 230);
      textSize(20);
      textAlign(LEFT);
      text("Elke speler heeft 7 boten in zijn vloot. ", 50, 270);
      text("Speler 1 plaatst eerst zijn boten in de grid,", 50, 305);
      text("speler 2 volgt. Na klikken en verslepen van ", 50, 340);
      text("de boot druk je op ‘p’ om uw boot te plaatsen.", 50, 375);
      text("Eenmaal een boot geplaatst is kan zijn positie niet veranderd worden.", 50, 410);
      text("Druk op ‘v’ om de boot te roteren zodat hij verticaal geplaatst kan worden.", 50, 445);
      text("Om de boot terug horizontaal te krijgen Klik je 'h'", 50, 480);
      text("De plaatsing van de boten moet voor dat de tijd om is. ", 50, 515);
      text("Druk op ‘M’ om eventueel achtergrondmuziek te hebben.", 50, 550);
      textSize(30);
      textAlign(LEFT);
      text("DOEL VAN HET SPEL", 50, 600);
      textSize(20);
      textAlign(LEFT);
      text("Speler 1 probeert een boot te raken van speler 2 door in de kleine grid op een vakje te klikken.", 50, 655);
      text("Indien raak, krijgt Speler 1 een punt. Indien mis, krijgt speler 1 geen punten.", 50, 690);
      text("Speler 2 is dan aan de beurt. Wie eerst alle boten van zijn tegenstander", 50, 725);
      text("heeft uitgeschakeld wint het spel.", 50, 760);
    }
  }
}