public boolean player2PlacedBoats = false;

//Aircraft Carrier Speler2 instantie variabelen
public float aircraftLocXSpeler2;
public float aircraftLocYSpeler2;
public boolean aircraftHorizontalSpeler2 = true;

//Battleship Speler2 instantie variabelen
public float battleshipLocXSpeler2;
public float battleshipLocYSpeler2;
public boolean battleshipHorizontalSpeler2 = true;

//Cruiser Speler2 instantie variabelen
public float cruiserLocXSpeler2;
public float cruiserLocYSpeler2;
public boolean cruiserHorizontalSpeler2 = true;

//Destroyer1 Speler2 instantie variabelen
public float destroyer1LocXSpeler2;
public float destroyer1LocYSpeler2;
public boolean destroyer1HorizontalSpeler2 = true;

//Destroyer1 Speler2 instantie variabelen
public float destroyer2LocXSpeler2;
public float destroyer2LocYSpeler2;
public boolean destroyer2HorizontalSpeler2 = true;

//Submarine1 Speler2 instantie variabelen
public float submarine1LocXSpeler2;
public float submarine1LocYSpeler2;
public boolean submarine1HorizontalSpeler2 = true;

//Submarine1 Speler2 instantie variabelen
public float submarine2LocXSpeler2;
public float submarine2LocYSpeler2;
public boolean submarine2HorizontalSpeler2 = true;

public class SchipSpeler2
{
  private final int locationInterfaceX = 905;
  private final int locationInterfaceY = 550;

  //Aircraft Carrier lokale variabelen
  private boolean aircraftCarrierIsInGrid2;
  private float aircraftX = 12 + locationInterfaceX;
  private float aircraftY = 72 + locationInterfaceY;  
  private boolean moveAircraft = false;
  private boolean aircraftPlacementStage = true;  
  private final int aircraftl = 240;
  private int aircraftLength = aircraftl;
  private int aircraftWidth = breedteSchip;

  //Battleship lokale variabelen
  private boolean battleshipIsInGrid2;
  private float battleshipX = 32 + locationInterfaceX;
  private float battleshipY = 147 + locationInterfaceY;
  private boolean moveBattleship = false;
  private boolean battleshipPlacementStage = false;
  private final int battleshipl = 190;
  private int battleshipLength = battleshipl;
  private int battleshipWidth = breedteSchip;

  //Cruiser lokale variabelen
  private boolean cruiserIsInGrid2;
  private float cruiserX = 52 + locationInterfaceX;
  private float cruiserY = 222 + locationInterfaceY;
  private boolean moveCruiser = false;
  private boolean cruiserPlacementStage = false;
  private final int cruiserl = 140;
  private int cruiserLength = cruiserl;
  private int cruiserWidth = breedteSchip;

  //Destroyer1 lokale variabelen
  private boolean destroyerIsInGrid2;
  private float destroyerX = 25 + locationInterfaceX;
  private float destroyerY = 297 + locationInterfaceY;
  private boolean moveDestroyer = false;
  private boolean destroyerPlacementStage = false;
  private final int destroyerl = 90;
  private int destroyerLength = destroyerl;
  private int destroyerWidth = breedteSchip;

  //Destroyer 2 lokale variabelen
  private boolean destroyer2IsInGrid2;
  private float destroyer2X = 150 + locationInterfaceX;
  private float destroyer2Y = 297 + locationInterfaceY;
  private boolean moveDestroyer2 = false;
  private boolean destroyer2PlacementStage = false;
  private int destroyer2Length = destroyerl;
  private int destroyer2Width = breedteSchip;

  //Submarine1 lokale variabelen
  private boolean submarineIsInGrid2;
  private float submarineX = 51 + locationInterfaceX;
  private float submarineY = 372 + locationInterfaceY;
  private boolean moveSubmarine = false;
  private boolean submarinePlacementStage = false;
  private final int submarinel = 40;
  private int submarineLength = submarinel;
  private int submarineWidth = breedteSchip;

  //submarine 2 lokale variabelen
  private boolean submarine2IsInGrid2;
  private float submarine2X = 180 + locationInterfaceX;
  private float submarine2Y = 372 + locationInterfaceY;
  private boolean moveSubmarine2 = false;
  private boolean submarine2PlacementStage = false;
  private int submarine2Length = submarinel;
  private int submarine2Width = breedteSchip;

  private boolean boatSelectionPalet = true;

  public void speler2Boten () {
    boatSelection ();
    aircraft();
    battleship();
    cruiser();
    destroyer1();
    destroyer2();
    submarine1();
    submarine2();
  }

  private void boatSelection () {
    if (boatSelectionPalet == true) {
      fill (255);
      stroke (0);
      rect(locationInterfaceX, locationInterfaceY, 265, 40);
      for (int i=0; i<5; i++) {
        rect(locationInterfaceX, 55 + locationInterfaceY + 75 * i, 265, 65);
      }
      textSize(30); 
      fill (0);
      text("Plaats uw schepen", 20 + locationInterfaceX, 30 + locationInterfaceY);
    }
  }

  //Aircraft = rode vierhoek
  public void aircraft () {
    if (aircraftPlacementStage == true) {

      if (mouseX > aircraftX && mouseX < aircraftX+aircraftl && mouseY > aircraftY && mouseY < aircraftY+breedteSchip) {
        stroke(255);
        strokeWeight(2);
        fill(161, 15, 15);        
        if (mousePressed) {
          moveAircraft = true;
        }
      } else {
        stroke(0);
        strokeWeight(2);
        fill(255, 0, 0);
      }
      if (moveAircraft == true) {        
        aircraftX = mouseX;
        aircraftY = mouseY;
      }      
      if (keyPressed && moveAircraft) {
        if (key == 'v' || key == 'V') {
          aircraftWidth = aircraftl;
          aircraftLength = breedteSchip;
          aircraftHorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          aircraftWidth = breedteSchip;
          aircraftLength = aircraftl;
          aircraftHorizontalSpeler2 = true;
        }
        if (key == 'p' || key == 'P') {
          if (aircraftHorizontalSpeler2 == true) {
            if (mouseX > 1075 && mouseX < 1525 - aircraftl && mouseY > 75 && mouseY < 525 - breedteSchip) {
              aircraftCarrierIsInGrid2 = true;
            } else {
              aircraftCarrierIsInGrid2 = false;
            }
          } else {
            if (mouseX > 1075 && mouseX < 1525 - breedteSchip && mouseY > 75 && mouseY < 525 - aircraftl) {
              aircraftCarrierIsInGrid2 = true;
            } else {
              aircraftCarrierIsInGrid2 = false;
            }
          }
          if (aircraftCarrierIsInGrid2) {
            aircraftLocXSpeler2 = aircraftX;
            aircraftLocYSpeler2 = aircraftY;
            moveAircraft = false;
            aircraftPlacementStage = false;
            battleshipPlacementStage = true;
            println("Aircraft Carrier Player 2 Placed");
          } else {
            println("Ship Is Out Of The Grid");
          }
        }
      }
    }
    if (aircraftPlacementStage == false) {
      stroke(0);
      strokeWeight(2);
      fill(255, 0, 0);
    }
    rect(aircraftX, aircraftY, aircraftLength, aircraftWidth);
  }

  //battleship is groen

  public void battleship () {
    if (battleshipPlacementStage == true) {
      if (mouseX > battleshipX && mouseX < battleshipX+battleshipl && mouseY > battleshipY && mouseY < battleshipY+breedteSchip) {
        stroke(255);
        strokeWeight(2);
        fill(13, 131, 9);        
        if (mousePressed) {
          moveBattleship = true;
        }
      } else {
        fill(0, 255, 0);
        stroke(0);
        strokeWeight(2);
      }
      if (moveBattleship == true) {
        battleshipX = mouseX;
        battleshipY = mouseY;
      }
      if (keyPressed && moveBattleship) {
        if (key == 'v' || key == 'V') {
          battleshipWidth = battleshipl;
          battleshipLength = breedteSchip;
          battleshipHorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          battleshipWidth = breedteSchip;
          battleshipLength = battleshipl;
          battleshipHorizontalSpeler2 = true;
        }
        if (key == 'p' || key == 'P') {
          if (battleshipHorizontalSpeler2 == true) {
            if (mouseX > 1075 && mouseX < 1525 - battleshipl && mouseY > 75 && mouseY < 525 - breedteSchip) {
              battleshipIsInGrid2 = true;
            } else {
              battleshipIsInGrid2 = false;
            }
          } else {
            if (mouseX > 1075 && mouseX < 1525 - breedteSchip && mouseY > 75 && mouseY < 525 - battleshipl) {
              battleshipIsInGrid2 = true;
            } else {
              battleshipIsInGrid2 = false;
            }
          }
          if (battleshipIsInGrid2 ) {
            battleshipLocXSpeler2 = battleshipX;
            battleshipLocYSpeler2 = battleshipY;
            moveBattleship = false;
            battleshipPlacementStage = false;
            cruiserPlacementStage = true;
            println("Battleship Player 2 Placed");
          } else {
            println("Ship Is Out Of The Grid");
          }
        }
      }
    }
    if (battleshipPlacementStage == false) {
      fill(0, 255, 0);
      stroke(0);
      strokeWeight(2);
    }
    rect(battleshipX, battleshipY, battleshipLength, battleshipWidth);
  }

  //cruiser is blauw

  public void cruiser () {   
    if (cruiserPlacementStage) {
      if (mouseX > cruiserX && mouseX < cruiserX+cruiserl && mouseY > cruiserY && mouseY < cruiserY+breedteSchip) {
        stroke(255);
        strokeWeight(2);
        fill(11, 19, 100);       
        if (mousePressed) {
          moveCruiser = true;
        }
      } else {
        fill(0, 0, 255);
        stroke(0);
        strokeWeight(2);
      }
      if (moveCruiser == true) {
        cruiserX = mouseX;
        cruiserY = mouseY;
      }
      if (keyPressed && moveCruiser) {
        if (key == 'v' || key == 'V') {
          cruiserWidth = cruiserl;
          cruiserLength = breedteSchip;
          cruiserHorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          cruiserWidth = breedteSchip;
          cruiserLength = cruiserl;
          cruiserHorizontalSpeler2 = true;
        }
        if (key == 'p' || key == 'P') {
          if (cruiserHorizontalSpeler2 == true) {
            if (mouseX > 1075 && mouseX < 1525 - cruiserl && mouseY > 75 && mouseY < 525 - breedteSchip) {
              cruiserIsInGrid2 = true;
            } else {
              cruiserIsInGrid2 = false;
            }
          } else {
            if (mouseX > 1075 && mouseX < 1525 - breedteSchip && mouseY > 75 && mouseY < 525 - cruiserl) {
              cruiserIsInGrid2 = true;
            } else {
              cruiserIsInGrid2 = false;
            }
          }
          if (cruiserIsInGrid2) {
            cruiserLocXSpeler2 = cruiserX;
            cruiserLocYSpeler2 = cruiserY;         
            moveCruiser = false;
            cruiserPlacementStage = false;
            destroyerPlacementStage = true;
            println("Cruiser Player 2 Placed");
          } else {
            println("Ship Is Out Of The Grid");
          }
        }
      }
    }
    if (cruiserPlacementStage == false) {
      fill(0, 0, 255);
      stroke(0);
      strokeWeight(2);
    }
    rect(cruiserX, cruiserY, cruiserLength, cruiserWidth);
  }

  //destroyer is geel
  public void destroyer1() {   
    if (destroyerPlacementStage == true) {
      if (mouseX > destroyerX && mouseX < destroyerX+destroyerl && mouseY > destroyerY && mouseY < destroyerY+breedteSchip) {
        stroke(255);
        strokeWeight(2);
        fill(245, 245, 20);        
        if (mousePressed) {
          moveDestroyer = true;
        }
      } else {
        fill(255, 255, 0);
        stroke(0);
        strokeWeight(2);
      }
      if (moveDestroyer == true) {
        destroyerX = mouseX;
        destroyerY = mouseY;
      }
      if (keyPressed && moveDestroyer) {
        if (key == 'v' || key == 'V') {
          destroyerWidth = destroyerl;
          destroyerLength = breedteSchip;
          destroyer1HorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          destroyerWidth = breedteSchip;
          destroyerLength = destroyerl;
          destroyer1HorizontalSpeler2 = true;
        }
        if (key == 'p' || key == 'P') {
          if (destroyer1HorizontalSpeler2 == true) {
            if (mouseX > 1075 && mouseX < 1525 - destroyerl && mouseY > 75 && mouseY < 525 - breedteSchip) {
              destroyerIsInGrid2 = true;
            } else {
              destroyerIsInGrid2 = false;
            }
          } else {
            if (mouseX > 1075 && mouseX < 1525 - breedteSchip && mouseY > 75 && mouseY < 525 - destroyerl) {
              destroyerIsInGrid2 = true;
            } else {
              destroyerIsInGrid2 = false;
            }
          }
          if (destroyerIsInGrid2) {
            destroyer1LocXSpeler2 = destroyerX;
            destroyer1LocYSpeler2 = destroyerY;
            moveDestroyer = false;
            destroyerPlacementStage = false;
            destroyer2PlacementStage = true;
            println("Destroyer One Player 2 Placed");
          } else {
            println("Ship Is Out Of The Grid");
          }
        }
      }
    }
    if (destroyerPlacementStage == false) {
      fill(255, 255, 0);
      stroke(0);
      strokeWeight(2);
    }
    rect(destroyerX, destroyerY, destroyerLength, destroyerWidth);
  }

  public void destroyer2() {    
    if (destroyer2PlacementStage == true) {
      if (mouseX > destroyer2X && mouseX < destroyer2X+destroyerl && mouseY > destroyer2Y && mouseY < destroyer2Y+breedteSchip) {
        stroke(255);
        strokeWeight(2);
        fill(245, 245, 20);        
        if (mousePressed) {
          moveDestroyer2 = true;
        }
      } else {
        fill(255, 255, 0);
        stroke(0);
        strokeWeight(2);
      }
      if (moveDestroyer2 == true) {
        destroyer2X = mouseX;
        destroyer2Y = mouseY;
      }
      if (keyPressed && moveDestroyer2) {
        if (key == 'v' || key == 'V') {
          destroyer2Width = destroyerl;
          destroyer2Length = breedteSchip;
          destroyer2HorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          destroyer2Width = breedteSchip;
          destroyer2Length = destroyerl;
          destroyer2HorizontalSpeler2 = true;
        }
        if (key == 'p' || key == 'P') {
          if (destroyer2HorizontalSpeler2 == true) {
            if (mouseX > 1075 && mouseX < 1525 - destroyerl && mouseY > 75 && mouseY < 525 - breedteSchip) {
              destroyer2IsInGrid2 = true;
            } else {
              destroyer2IsInGrid2 = false;
            }
          } else {
            if (mouseX > 1075 && mouseX  < 1525 - breedteSchip && mouseY > 75 && mouseY < 525 - destroyerl) {
              destroyer2IsInGrid2 = true;
            } else {
              destroyer2IsInGrid2 = false;
            }
          }
          if (destroyer2IsInGrid2) {
            destroyer2LocXSpeler2 = destroyer2X;
            destroyer2LocYSpeler2 = destroyer2Y;
            moveDestroyer = false;
            destroyer2PlacementStage = false;
            submarinePlacementStage = true;
            println("Destroyer Two Player 2 Placed");
          } else {
            println("Ship Is Out Of The Grid");
          }
        }
      }
    }
    if (destroyer2PlacementStage == false) {
      fill(255, 255, 0);
      stroke(0);
      strokeWeight(2);
    }
    rect(destroyer2X, destroyer2Y, destroyer2Length, destroyer2Width);
  }

  //submarine is paars
  public void submarine1() {
    if (submarinePlacementStage == true) {
      if (mouseX > submarineX && mouseX < submarineX+breedteSchip && mouseY > submarineY && mouseY < submarineY+submarinel) {
        stroke(255);
        strokeWeight(2);
        fill(138, 12, 121);
        if (mousePressed) {
          moveSubmarine = true;
        }
      } else {
        fill(138, 12, 121);
        stroke(0);        
        strokeWeight(2);
      }
      if (moveSubmarine == true) {
        submarineX = mouseX;
        submarineY = mouseY;
      }
      if (keyPressed && moveSubmarine) {
        if (key == 'v' || key == 'V') {
          submarineWidth = submarinel;
          submarineLength = breedteSchip;
          submarine1HorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          submarineWidth = breedteSchip;
          submarineLength = submarinel;
          submarine1HorizontalSpeler2 = true;
        }
        if (key == 'p' || key == 'P') {
          if (submarine1HorizontalSpeler2 == true) {
            if (mouseX > 1075 && mouseX < 1525 - submarinel && mouseY > 75 && mouseY < 525 - breedteSchip) {
              submarineIsInGrid2 = true;
            } else {
              submarineIsInGrid2 = false;
            }
          } else {
            if (mouseX > 1075 && mouseX < 1525 - breedteSchip && mouseY > 75 && mouseY < 525 - submarinel) {
              submarineIsInGrid2 = true;
            } else {
              submarineIsInGrid2 = false;
            }
          }
          if (submarineIsInGrid2) {
            submarine1LocXSpeler2 = submarineX;
            submarine1LocYSpeler2 = submarineY;
            moveSubmarine = false;
            submarinePlacementStage = false;
            submarine2PlacementStage = true;
            println("Submarine One Player 2 Placed");
          } else {
            println("Ship Is Out Of The Grid");
          }
        }
      }
    }
    if (submarinePlacementStage == false) {
      fill(138, 12, 121);
      stroke(0);        
      strokeWeight(2);
    }    
    rect(submarineX, submarineY, submarineLength, submarineWidth);
  }

  public void submarine2() {
    if (submarine2PlacementStage == true) {
      if (mouseX > submarine2X && mouseX < submarine2X +breedteSchip && mouseY > submarine2Y && mouseY < submarine2Y +submarinel) {
        stroke(255);
        strokeWeight(2);
        fill(138, 12, 121);        
        if (mousePressed) {
          moveSubmarine2 = true;
        }
      } else {
        fill(138, 12, 121);
        stroke(0);        
        strokeWeight(2);
      }
      if (moveSubmarine2 == true) {
        submarine2X = mouseX;
        submarine2Y = mouseY;
      }
      if (keyPressed && moveSubmarine2) {
        if (key == 'v' || key == 'V') {
          submarine2Width = submarinel;
          submarine2Length = breedteSchip;
          submarine2HorizontalSpeler2 = false;
        }
        if (key == 'h' || key == 'H') {
          submarine2Width = breedteSchip;
          submarine2Length = submarinel;
          submarine2HorizontalSpeler2 = true;
        }
        if (key == 'p' || key == 'P') {
          if (submarine2HorizontalSpeler2 == true) {
            if (mouseX > 1075 && mouseX < 1525 - submarinel && mouseY > 75 && mouseY < 525 - breedteSchip) {
              submarine2IsInGrid2 = true;
            } else {
              submarine2IsInGrid2 = false;
            }
          } else {
            if (mouseX > 1075 && mouseX < 1525 - breedteSchip && mouseY > 75 && mouseY < 525 - submarinel) {
              submarine2IsInGrid2 = true;
            } else {
              submarine2IsInGrid2 = false;
            }
          }
          if (submarine2IsInGrid2) {
            submarine2LocXSpeler2 = submarine2X;
            submarine2LocYSpeler2 = submarine2Y;
            moveSubmarine2 = false;
            submarine2PlacementStage = false;
            boatSelectionPalet = false;
            player2PlacedBoats = true;
            if (boatSelectionPalet == false) {
              zeeslag3 = false;
              zeeslag4 = true;
              Mousepressed = true;
            }
            println("Submarine Two Player 2 Placed");
          } else {
            println("Ship Is Out Of The Grid");
          }
        }
      }
    }
    if (submarine2PlacementStage == false) {
      fill(138, 12, 121);
      stroke(0);        
      strokeWeight(2);
    }
    rect(submarine2X, submarine2Y, submarine2Length, submarine2Width);
  }
}