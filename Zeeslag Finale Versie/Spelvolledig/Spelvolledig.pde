import ddf.minim.*;
Spel spel = new Spel();
Tijd startTimer = new Tijd(90);
Geluid geluid = new Geluid();
SchipSpeler1 schepen1 = new SchipSpeler1();
SchipSpeler2 schepen2 = new SchipSpeler2();
Zee zee = new Zee();
Regels rules = new Regels();
Controls toetsen = new Controls();
Minim minim; 
AudioPlayer player; 
boolean readyPlayer1 = false;


void setup() {
  Mousepressed = false;
  size(1600, 1000);
  frameRate(60);
  spel.setup1();
  zee.setup3();
  startTimer.setup2();
  minim = new Minim(this);
  player = minim.loadFile("background.mp3");
  keyPressed();
}




void draw() {
  checkLoc();
  spel.afbeeldingentotaal();
  spel.achtergrond();
  spel.afbeeldingzee();
  spel.grid1();
  spel.grid2();
  spel.tekst();
  spel.coordinatenblokjes();
  spel.gridklein1();
  spel.gridklein2();
  spel.afbeeldingknoppen();
  spel.afbeeldingcoordinatenblokjesgroot();
  spel.afbeeldingcoordinatenblokjesklein();
  spel.tekstknoppen();
  spel.tekstgrid12();
  spel.tekstgrid34();
  zee.check();  
  startTimer.telnaarbeneden();
  startTimer.teksttimer();
  boatPlacement();
  begin();
  //zee.mouseReleased();
  //zee.draw();
  if (Mousepressed==true) {
    zee.mouseClicked();
  }
  for (Miss b : gemist)   b.run();
  for (Circle b : raak)   b.run();
  coverUp();
  rules.runRegels();
  toetsen.runControls();
  zee.endGame();
}

private void boatPlacement () {
  schepen1.speler1Boten();
  if (player1PlacedBoats) {
    schepen2.speler2Boten ();
  }
}

private void coverUp () {
  if (!zeeslag4 && player2PlacedBoats) {
    fill(0);
    rect(40, 540, 380, 380);
  }
  if (!zeeslag3 && player2PlacedBoats) {
    fill(0);
    rect(1190, 540, 380, 380);
  }
}

void begin() {


  if (zeeslag3 == true) {
    image (zeeslag1, 0, 0);
  }
  if (zeeslag4 == true) {
    image (zeeslag2, 1025, 0);
  }
}

private void checkLoc() {
  if (mousePressed) {
    println(mouseX);
    println(mouseY);
  }
}

void keyPressed() {
  if (keyPressed) {
    if (key == 'm' || key == 'M') 
    {
      if ( player.isPlaying() )
      {
        player.pause();
      } else if ( player.position() == player.length() )
      {
        player.rewind();
        player.play();
      } else
      {
        player.play();
      }
    }
  }
}