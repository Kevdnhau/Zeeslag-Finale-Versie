import java.awt.MouseInfo;
import java.awt.Point;

public int player1Score=0;
public int player2Score=0;
public boolean player1Wins = false;
public boolean player2Wins = false;

public boolean zeeslag3 = false;
public boolean Mousepressed = false;
public boolean zeeslag4 = false;
public boolean tekenkruisje = false;

public PImage zeeslag1;
public PImage zeeslag2;
public PImage kruisje;



class Zee {
  int geraakt1 = 0; 
  int geraakt2 = 0;
  int [] xcord = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord2 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord2 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord3 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord3 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord4 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord4 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord5 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord5 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord6 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord6 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord7 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord7 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord8 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord8 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord9 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord9 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord10 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord10 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord11 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord11 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord12 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord12 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord13 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord13 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord14 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord14 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord15 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord15 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] xcord16 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  int [] ycord16 = {0,1, 2, 3, 4, 5, 6, 7, 8, 9} ;
  
  
  
  private void endGame () {
    if (player1Score == 18) {
      fill(0);
      rect(0,0,1600,1000);
      fill(255);
      textSize(50);
      text("Speler 1 Wint",20,100);
    }
    if (player2Score == 18) {
      fill(0);
      rect(0,0,1600,1000);
      fill(255);
      textSize(50);
      text("Speler 2 Wint",20,100);
    }
  }
  
  
  void setup3() {
  zeeslag1 = loadImage("zeeslag1.jpg");
  zeeslag2 = loadImage("zeeslag2.jpg");
  kruisje = loadImage("kruisje.png");
}
  
  void check() {
   //grid1
   //checkt de horizontale locatie van de schepen
      if ((75<aircraftLocX) &&( aircraftLocX< 125)) {xcord[1]=2;} else {xcord[1]=51;};
      if ((126<aircraftLocX)&&( aircraftLocX< 175)) {xcord[2]=2;} else {xcord[2]=52;};
      if ((176<aircraftLocX)&&( aircraftLocX< 225)) {xcord[3]=2;} else {xcord[3]=53;};
      if ((226<aircraftLocX)&&( aircraftLocX< 275)) {xcord[4]=2;} else {xcord[4]=54;};
      if ((276<aircraftLocX)&&( aircraftLocX< 325)) {xcord[5]=2;} else {xcord[5]=55;};
      if ((326<aircraftLocX)&&( aircraftLocX< 375)) {xcord[6]=2;} else {xcord[6]=56;};
      if ((376<aircraftLocX)&&( aircraftLocX< 425)) {xcord[7]=2;} else {xcord[7]=57;};
      if ((426<aircraftLocX)&&( aircraftLocX< 475)) {xcord[8]=2;} else {xcord[8]=58;};
      if ((476<aircraftLocX)&&( aircraftLocX< 525)) {xcord[9]=2;} else {xcord[9]=59;};
      
      if (aircraftHorizontal == true){
      if ((75<aircraftLocX+50) &&( aircraftLocX+50< 125) || (75<aircraftLocX+100) &&( aircraftLocX+100< 125) || (75<aircraftLocX+150) &&( aircraftLocX+150< 125) || (75<aircraftLocX+200) &&( aircraftLocX+200< 125)) {xcord[1]=2;} 
      if ((126<aircraftLocX+50) &&( aircraftLocX+50< 175) || (126<aircraftLocX+100) &&( aircraftLocX+100< 175) || (126<aircraftLocX+150) &&( aircraftLocX+150< 175) || (126<aircraftLocX+200) &&( aircraftLocX+200< 175))  {xcord[2]=2;} 
      if ((176<aircraftLocX+50) &&( aircraftLocX+50< 225) || (176<aircraftLocX+100) &&( aircraftLocX+100< 225) || (176<aircraftLocX+150) &&( aircraftLocX+150< 225) || (176<aircraftLocX+200) &&( aircraftLocX+200< 225))  {xcord[3]=2;} 
      if ((226<aircraftLocX+50) &&( aircraftLocX+50< 275) || (226<aircraftLocX+100) &&( aircraftLocX+100< 275) || (226<aircraftLocX+150) &&( aircraftLocX+150< 275) || (226<aircraftLocX+200) &&( aircraftLocX+200< 275)) {xcord[4]=2;} 
      if ((276<aircraftLocX+50) &&( aircraftLocX+50< 325) || (276<aircraftLocX+100) &&( aircraftLocX+100< 325) || (276<aircraftLocX+150) &&( aircraftLocX+150< 325) || (276<aircraftLocX+200) &&( aircraftLocX+200< 325)) {xcord[5]=2;} 
      if ((326<aircraftLocX+50) &&( aircraftLocX+50< 375) || (326<aircraftLocX+100) &&( aircraftLocX+100< 375) || (326<aircraftLocX+150) &&( aircraftLocX+150< 375) || (326<aircraftLocX+200) &&( aircraftLocX+200< 375)) {xcord[6]=2;} 
      if ((376<aircraftLocX+50) &&( aircraftLocX+50< 425) || (376<aircraftLocX+100) &&( aircraftLocX+100< 425) || (376<aircraftLocX+150) &&( aircraftLocX+150< 425) || (376<aircraftLocX+200) &&( aircraftLocX+200< 425)) {xcord[7]=2;} 
      if ((426<aircraftLocX+50) &&( aircraftLocX+50< 475) || (426<aircraftLocX+100) &&( aircraftLocX+100< 475) || (426<aircraftLocX+150) &&( aircraftLocX+150< 475) || (426<aircraftLocX+200) &&( aircraftLocX+200< 475)) {xcord[8]=2;} 
      if ((476<aircraftLocX+50) &&( aircraftLocX+50< 525) || (476<aircraftLocX+100) &&( aircraftLocX+100< 525) || (476<aircraftLocX+150) &&( aircraftLocX+150< 525) || (476<aircraftLocX+200) &&( aircraftLocX+200< 525)) {xcord[9]=2;} }
      
    //checkt de verticale locatie van de schepen
      if ((75<aircraftLocY) && (aircraftLocY< 125)) {ycord[1]=2;} else {ycord[1]=61;};
      if ((126<aircraftLocY)&&( aircraftLocY< 175)) {ycord[2]=2;} else {ycord[2]=62;};
      if ((176<aircraftLocY)&&( aircraftLocY< 225)) {ycord[3]=2;} else {ycord[3]=63;};
      if ((226<aircraftLocY)&&( aircraftLocY< 275)) {ycord[4]=2;} else {ycord[4]=64;};
      if ((276<aircraftLocY)&&( aircraftLocY< 325)) {ycord[5]=2;} else {ycord[5]=65;};
      if ((326<aircraftLocY)&&( aircraftLocY< 375)) {ycord[6]=2;} else {ycord[6]=66;};
      if ((376<aircraftLocY)&&( aircraftLocY< 425)) {ycord[7]=2;} else {ycord[7]=67;};
      if ((426<aircraftLocY)&&( aircraftLocY< 475)) {ycord[8]=2;} else {ycord[8]=68;};
      if ((476<aircraftLocY)&&( aircraftLocY< 525)) {ycord[9]=2;} else {ycord[9]=69;};
      
      if (aircraftHorizontal == false){
      if ((75<aircraftLocY+50) &&( aircraftLocY+50< 125) || (75<aircraftLocY+100) &&( aircraftLocY+100< 125) || (75<aircraftLocY+150) &&( aircraftLocY+150< 125) || (75<aircraftLocY+200) &&( aircraftLocY+200< 125)) {ycord[1]=2;} 
      if ((126<aircraftLocY+50) &&( aircraftLocY+50< 175) || (126<aircraftLocY+100) &&( aircraftLocY+100< 175) || (126<aircraftLocY+150) &&( aircraftLocY+150< 175) || (126<aircraftLocY+200) &&( aircraftLocY+200< 175))  {ycord[2]=2;} 
      if ((176<aircraftLocY+50) &&( aircraftLocY+50< 225) || (176<aircraftLocY+100) &&( aircraftLocY+100< 225) || (176<aircraftLocY+150) &&( aircraftLocY+150< 225) || (176<aircraftLocY+200) &&( aircraftLocY+200< 225))  {ycord[3]=2;} 
      if ((226<aircraftLocY+50) &&( aircraftLocY+50< 275) || (226<aircraftLocY+100) &&( aircraftLocY+100< 275) || (226<aircraftLocY+150) &&( aircraftLocY+150< 275) || (226<aircraftLocY+200) &&( aircraftLocY+200< 275)) {ycord[4]=2;} 
      if ((276<aircraftLocY+50) &&( aircraftLocY+50< 325) || (276<aircraftLocY+100) &&( aircraftLocY+100< 325) || (276<aircraftLocY+150) &&( aircraftLocY+150< 325) || (276<aircraftLocY+200) &&( aircraftLocY+200< 325)) {ycord[5]=2;} 
      if ((326<aircraftLocY+50) &&( aircraftLocY+50< 375) || (326<aircraftLocY+100) &&( aircraftLocY+100< 375) || (326<aircraftLocY+150) &&( aircraftLocY+150< 375) || (326<aircraftLocY+200) &&( aircraftLocY+200< 375)) {ycord[6]=2;} 
      if ((376<aircraftLocY+50) &&( aircraftLocY+50< 425) || (376<aircraftLocY+100) &&( aircraftLocY+100< 425) || (376<aircraftLocY+150) &&( aircraftLocY+150< 425) || (376<aircraftLocY+200) &&( aircraftLocY+200< 425)) {ycord[7]=2;} 
      if ((426<aircraftLocY+50) &&( aircraftLocY+50< 475) || (426<aircraftLocY+100) &&( aircraftLocY+100< 475) || (426<aircraftLocY+150) &&( aircraftLocY+150< 475) || (426<aircraftLocY+200) &&( aircraftLocY+200< 475)) {ycord[8]=2;} 
      if ((476<aircraftLocY+50) &&( aircraftLocY+50< 525) || (476<aircraftLocY+100) &&( aircraftLocY+100< 525) || (476<aircraftLocY+150) &&( aircraftLocY+150< 525) || (476<aircraftLocY+200) &&( aircraftLocY+200< 525)) {ycord[9]=2;} }
      
      
      if ((75<battleshipLocX) &&( battleshipLocX< 125)) {xcord10[1]=2;} else {xcord10[1]=151;};
      if ((126<battleshipLocX)&&( battleshipLocX< 175)) {xcord10[2]=2;} else {xcord10[2]=152;};
      if ((176<battleshipLocX)&&( battleshipLocX< 225)) {xcord10[3]=2;} else {xcord10[3]=153;};
      if ((226<battleshipLocX)&&( battleshipLocX< 275)) {xcord10[4]=2;} else {xcord10[4]=154;};
      if ((276<battleshipLocX)&&( battleshipLocX< 325)) {xcord10[5]=2;} else {xcord10[5]=155;};
      if ((326<battleshipLocX)&&( battleshipLocX< 375)) {xcord10[6]=2;} else {xcord10[6]=156;};
      if ((376<battleshipLocX)&&( battleshipLocX< 425)) {xcord10[7]=2;} else {xcord10[7]=157;};
      if ((426<battleshipLocX)&&( battleshipLocX< 475)) {xcord10[8]=2;} else {xcord10[8]=158;};
      if ((476<battleshipLocX)&&( battleshipLocX< 525)) {xcord10[9]=2;} else {xcord10[9]=159;};
      
      if (battleshipHorizontal == true){
      if ((75<battleshipLocX+50) &&( battleshipLocX+50< 125) || (75<battleshipLocX+100) &&( battleshipLocX+100< 125) || (75<battleshipLocX+150) &&( battleshipLocX+150< 125))  {xcord10[1]=2;} 
      if ((126<battleshipLocX+50) &&( battleshipLocX+50< 175) || (126<battleshipLocX+100) &&( battleshipLocX+100< 175) || (126<battleshipLocX+150) &&( battleshipLocX+150< 175)) {xcord10[2]=2;} 
      if ((176<battleshipLocX+50) &&( battleshipLocX+50< 225) || (176<battleshipLocX+100) &&( battleshipLocX+100< 225) || (176<battleshipLocX+150) &&( battleshipLocX+150< 225)) {xcord10[3]=2;} 
      if ((226<battleshipLocX+50) &&( battleshipLocX+50< 275) || (226<battleshipLocX+100) &&( battleshipLocX+100< 275) || (226<battleshipLocX+150) &&( battleshipLocX+150< 275)) {xcord10[4]=2;} 
      if ((276<battleshipLocX+50) &&( battleshipLocX+50< 325) || (276<battleshipLocX+100) &&( battleshipLocX+100< 325) || (276<battleshipLocX+150) &&( battleshipLocX+150< 325)) {xcord10[5]=2;} 
      if ((326<battleshipLocX+50) &&( battleshipLocX+50< 375) || (326<battleshipLocX+100) &&( battleshipLocX+100< 375) || (326<battleshipLocX+150) &&( battleshipLocX+150< 375)) {xcord10[6]=2;} 
      if ((376<battleshipLocX+50) &&( battleshipLocX+50< 425) || (376<battleshipLocX+100) &&( battleshipLocX+100< 425) || (376<battleshipLocX+150) &&( battleshipLocX+150< 425)) {xcord10[7]=2;} 
      if ((426<battleshipLocX+50) &&( battleshipLocX+50< 475) || (426<battleshipLocX+100) &&( battleshipLocX+100< 475) || (426<battleshipLocX+150) &&( battleshipLocX+150< 475)) {xcord10[8]=2;} 
      if ((476<battleshipLocX+50) &&( battleshipLocX+50< 525) || (476<battleshipLocX+100) &&( battleshipLocX+100< 525) || (476<battleshipLocX+150) &&( battleshipLocX+150< 525)) {xcord10[9]=2;} }
      
      
      if ((75<battleshipLocY) && (battleshipLocY< 125)) {ycord10[1]=2;} else {ycord10[1]=161;};
      if ((126<battleshipLocY)&&( battleshipLocY< 175)) {ycord10[2]=2;} else {ycord10[2]=162;};
      if ((176<battleshipLocY)&&( battleshipLocY< 225)) {ycord10[3]=2;} else {ycord10[3]=163;};
      if ((226<battleshipLocY)&&( battleshipLocY< 275)) {ycord10[4]=2;} else {ycord10[4]=164;};
      if ((276<battleshipLocY)&&( battleshipLocY< 325)) {ycord10[5]=2;} else {ycord10[5]=165;};
      if ((326<battleshipLocY)&&( battleshipLocY< 375)) {ycord10[6]=2;} else {ycord10[6]=166;};
      if ((376<battleshipLocY)&&( battleshipLocY< 425)) {ycord10[7]=2;} else {ycord10[7]=167;};
      if ((426<battleshipLocY)&&( battleshipLocY< 475)) {ycord10[8]=2;} else {ycord10[8]=168;};
      if ((476<battleshipLocY)&&( battleshipLocY< 525)) {ycord10[9]=2;} else {ycord10[9]=169;};
      
      if (battleshipHorizontal == false){
      if ((75<battleshipLocY+50) &&( battleshipLocY+50< 125) || (75<battleshipLocY+100) &&( battleshipLocY+100< 125) || (75<battleshipLocY+150) &&( battleshipLocY+150< 125))  {ycord10[1]=2;} 
      if ((126<battleshipLocY+50) &&( battleshipLocY+50< 175) || (126<battleshipLocY+100) &&( battleshipLocY+100< 175) || (126<battleshipLocY+150) &&( battleshipLocY+150< 175)) {ycord10[2]=2;} 
      if ((176<battleshipLocY+50) &&( battleshipLocY+50< 225) || (176<battleshipLocY+100) &&( battleshipLocY+100< 225) || (176<battleshipLocY+150) &&( battleshipLocY+150< 225)) {ycord10[3]=2;} 
      if ((226<battleshipLocY+50) &&( battleshipLocY+50< 275) || (226<battleshipLocY+100) &&( battleshipLocY+100< 275) || (226<battleshipLocY+150) &&( battleshipLocY+150< 275)) {ycord10[4]=2;} 
      if ((276<battleshipLocY+50) &&( battleshipLocY+50< 325) || (276<battleshipLocY+100) &&( battleshipLocY+100< 325) || (276<battleshipLocY+150) &&( battleshipLocY+150< 325)) {ycord10[5]=2;} 
      if ((326<battleshipLocY+50) &&( battleshipLocY+50< 375) || (326<battleshipLocY+100) &&( battleshipLocY+100< 375) || (326<battleshipLocY+150) &&( battleshipLocY+150< 375)) {ycord10[6]=2;} 
      if ((376<battleshipLocY+50) &&( battleshipLocY+50< 425) || (376<battleshipLocY+100) &&( battleshipLocY+100< 425) || (376<battleshipLocY+150) &&( battleshipLocY+150< 425)) {ycord10[7]=2;} 
      if ((426<battleshipLocY+50) &&( battleshipLocY+50< 475) || (426<battleshipLocY+100) &&( battleshipLocY+100< 475) || (426<battleshipLocY+150) &&( battleshipLocY+150< 475)) {ycord10[8]=2;} 
      if ((476<battleshipLocY+50) &&( battleshipLocY+50< 525) || (476<battleshipLocY+100) &&( battleshipLocY+100< 525) || (476<battleshipLocY+150) &&( battleshipLocY+150< 525)) {ycord10[9]=2;} }
      
      
      
      if ((75<cruiserLocX) &&( cruiserLocX< 125)) {xcord5[1]=2;} else {xcord5[1]=251;};
      if ((126<cruiserLocX)&&( cruiserLocX< 175)) {xcord5[2]=2;} else {xcord5[2]=252;};
      if ((176<cruiserLocX)&&( cruiserLocX< 225)) {xcord5[3]=2;} else {xcord5[3]=253;};
      if ((226<cruiserLocX)&&( cruiserLocX< 275)) {xcord5[4]=2;} else {xcord5[4]=254;};
      if ((276<cruiserLocX)&&( cruiserLocX< 325)) {xcord5[5]=2;} else {xcord5[5]=255;};
      if ((326<cruiserLocX)&&( cruiserLocX< 375)) {xcord5[6]=2;} else {xcord5[6]=256;};
      if ((376<cruiserLocX)&&( cruiserLocX< 425)) {xcord5[7]=2;} else {xcord5[7]=257;};
      if ((426<cruiserLocX)&&( cruiserLocX< 475)) {xcord5[8]=2;} else {xcord5[8]=258;};
      if ((476<cruiserLocX)&&( cruiserLocX< 525)) {xcord5[9]=2;} else {xcord5[9]=259;};
      
      if (cruiserHorizontal == true){
      if ((75<cruiserLocX+50) &&( cruiserLocX+50< 125) || (75<cruiserLocX+100) &&( cruiserLocX+100< 125))   {xcord5[1]=2;} 
      if ((126<cruiserLocX+50) &&( cruiserLocX+50< 175) || (126<cruiserLocX+100) &&( cruiserLocX+100< 175)) {xcord5[2]=2;} 
      if ((176<cruiserLocX+50) &&( cruiserLocX+50< 225) || (176<cruiserLocX+100) &&( cruiserLocX+100< 225)) {xcord5[3]=2;} 
      if ((226<cruiserLocX+50) &&( cruiserLocX+50< 275) || (226<cruiserLocX+100) &&( cruiserLocX+100< 275)) {xcord5[4]=2;} 
      if ((276<cruiserLocX+50) &&( cruiserLocX+50< 325) || (276<cruiserLocX+100) &&( cruiserLocX+100< 325)) {xcord5[5]=2;} 
      if ((326<cruiserLocX+50) &&( cruiserLocX+50< 375) || (326<cruiserLocX+100) &&( cruiserLocX+100< 375)) {xcord5[6]=2;} 
      if ((376<cruiserLocX+50) &&( cruiserLocX+50< 425) || (376<cruiserLocX+100) &&( cruiserLocX+100< 425)) {xcord5[7]=2;} 
      if ((426<cruiserLocX+50) &&( cruiserLocX+50< 475) || (426<cruiserLocX+100) &&( cruiserLocX+100< 475)) {xcord5[8]=2;} 
      if ((476<cruiserLocX+50) &&( cruiserLocX+50< 525) || (476<cruiserLocX+100) &&( cruiserLocX+100< 525)) {xcord5[9]=2;} }
      
      
      
      if ((75<cruiserLocY) && (cruiserLocY< 125)) {ycord5[1]=2;} else {ycord5[1]=261;};
      if ((126<cruiserLocY)&&( cruiserLocY< 175)) {ycord5[2]=2;} else {ycord5[2]=262;};
      if ((176<cruiserLocY)&&( cruiserLocY< 225)) {ycord5[3]=2;} else {ycord5[3]=263;};
      if ((226<cruiserLocY)&&( cruiserLocY< 275)) {ycord5[4]=2;} else {ycord5[4]=264;};
      if ((276<cruiserLocY)&&( cruiserLocY< 325)) {ycord5[5]=2;} else {ycord5[5]=265;};
      if ((326<cruiserLocY)&&( cruiserLocY< 375)) {ycord5[6]=2;} else {ycord5[6]=266;};
      if ((376<cruiserLocY)&&( cruiserLocY< 425)) {ycord5[7]=2;} else {ycord5[7]=267;};
      if ((426<cruiserLocY)&&( cruiserLocY< 475)) {ycord5[8]=2;} else {ycord5[8]=268;};
      if ((476<cruiserLocY)&&( cruiserLocY< 525)) {ycord5[9]=2;} else {ycord5[9]=269;};
      
      
      if (cruiserHorizontal == false){
      if ((75<cruiserLocY+50) &&( cruiserLocY+50< 125) || (75<cruiserLocY+100) &&( cruiserLocY+100< 125))  {ycord5[1]=2;} 
      if ((126<cruiserLocY+50) &&( cruiserLocY+50< 175) || (126<cruiserLocY+100) &&( cruiserLocY+100< 175)) {ycord5[2]=2;} 
      if ((176<cruiserLocY+50) &&( cruiserLocY+50< 225) || (176<cruiserLocY+100) &&( cruiserLocY+100< 225)) {ycord5[3]=2;} 
      if ((226<cruiserLocY+50) &&( cruiserLocY+50< 275) || (226<cruiserLocY+100) &&( cruiserLocY+100< 275)) {ycord5[4]=2;} 
      if ((276<cruiserLocY+50) &&( cruiserLocY+50< 325) || (276<cruiserLocY+100) &&( cruiserLocY+100< 325)) {ycord5[5]=2;} 
      if ((326<cruiserLocY+50) &&( cruiserLocY+50< 375) || (326<cruiserLocY+100) &&( cruiserLocY+100< 375)) {ycord5[6]=2;} 
      if ((376<cruiserLocY+50) &&( cruiserLocY+50< 425) || (376<cruiserLocY+100) &&( cruiserLocY+100< 425)) {ycord5[7]=2;} 
      if ((426<cruiserLocY+50) &&( cruiserLocY+50< 475) || (426<cruiserLocY+100) &&( cruiserLocY+100< 475)) {ycord5[8]=2;} 
      if ((476<cruiserLocY+50) &&( cruiserLocY+50< 525) || (476<cruiserLocY+100) &&( cruiserLocY+100< 525)) {ycord5[9]=2;} }
      
      
      if ((75<destroyer1LocX) &&( destroyer1LocX< 125)) {xcord6[1]=2;} else {xcord6[1]=351;};
      if ((126<destroyer1LocX)&&( destroyer1LocX< 175)) {xcord6[2]=2;} else {xcord6[2]=352;};
      if ((176<destroyer1LocX)&&( destroyer1LocX< 225)) {xcord6[3]=2;} else {xcord6[3]=353;};
      if ((226<destroyer1LocX)&&( destroyer1LocX< 275)) {xcord6[4]=2;} else {xcord6[4]=354;};
      if ((276<destroyer1LocX)&&( destroyer1LocX< 325)) {xcord6[5]=2;} else {xcord6[5]=355;};
      if ((326<destroyer1LocX)&&( destroyer1LocX< 375)) {xcord6[6]=2;} else {xcord6[6]=356;};
      if ((376<destroyer1LocX)&&( destroyer1LocX< 425)) {xcord6[7]=2;} else {xcord6[7]=357;};
      if ((426<destroyer1LocX)&&( destroyer1LocX< 475)) {xcord6[8]=2;} else {xcord6[8]=358;};
      if ((476<destroyer1LocX)&&( destroyer1LocX< 525)) {xcord6[9]=2;} else {xcord6[9]=359;};
      
      if (destroyer1Horizontal == true){
      if ((75<destroyer1LocX+50) &&( destroyer1LocX+50< 125))  {xcord6[1]=2;} 
      if ((126<destroyer1LocX+50) &&( destroyer1LocX+50< 175)) {xcord6[2]=2;} 
      if ((176<destroyer1LocX+50) &&( destroyer1LocX+50< 225)) {xcord6[3]=2;} 
      if ((226<destroyer1LocX+50) &&( destroyer1LocX+50< 275)) {xcord6[4]=2;} 
      if ((276<destroyer1LocX+50) &&( destroyer1LocX+50< 325)) {xcord6[5]=2;} 
      if ((326<destroyer1LocX+50) &&( destroyer1LocX+50< 375)) {xcord6[6]=2;} 
      if ((376<destroyer1LocX+50) &&( destroyer1LocX+50< 425)) {xcord6[7]=2;} 
      if ((426<destroyer1LocX+50) &&( destroyer1LocX+50< 475)) {xcord6[8]=2;} 
      if ((476<destroyer1LocX+50) &&( destroyer1LocX+50< 525)) {xcord6[9]=2;} }
      
      
      if ((75<destroyer1LocY) && (destroyer1LocY< 125)) {ycord6[1]=2;} else {ycord6[1]=361;};
      if ((126<destroyer1LocY)&&( destroyer1LocY< 175)) {ycord6[2]=2;} else {ycord6[2]=362;};
      if ((176<destroyer1LocY)&&( destroyer1LocY< 225)) {ycord6[3]=2;} else {ycord6[3]=363;};
      if ((226<destroyer1LocY)&&( destroyer1LocY< 275)) {ycord6[4]=2;} else {ycord6[4]=364;};
      if ((276<destroyer1LocY)&&( destroyer1LocY< 325)) {ycord6[5]=2;} else {ycord6[5]=365;};
      if ((326<destroyer1LocY)&&( destroyer1LocY< 375)) {ycord6[6]=2;} else {ycord6[6]=366;};
      if ((376<destroyer1LocY)&&( destroyer1LocY< 425)) {ycord6[7]=2;} else {ycord6[7]=367;};
      if ((426<destroyer1LocY)&&( destroyer1LocY< 475)) {ycord6[8]=2;} else {ycord6[8]=368;};
      if ((476<destroyer1LocY)&&( destroyer1LocY< 525)) {ycord6[9]=2;} else {ycord6[9]=369;}; 
      
      if (destroyer1Horizontal == false){
      if ((75<destroyer1LocY+50) &&( destroyer1LocY+50< 125))  {ycord6[1]=2;} 
      if ((126<destroyer1LocY+50) &&( destroyer1LocY+50< 175)) {ycord6[2]=2;} 
      if ((176<destroyer1LocY+50) &&( destroyer1LocY+50< 225)) {ycord6[3]=2;} 
      if ((226<destroyer1LocY+50) &&( destroyer1LocY+50< 275)) {ycord6[4]=2;} 
      if ((276<destroyer1LocY+50) &&( destroyer1LocY+50< 325)) {ycord6[5]=2;} 
      if ((326<destroyer1LocY+50) &&( destroyer1LocY+50< 375)) {ycord6[6]=2;} 
      if ((376<destroyer1LocY+50) &&( destroyer1LocY+50< 425)) {ycord6[7]=2;} 
      if ((426<destroyer1LocY+50) &&( destroyer1LocY+50< 475)) {ycord6[8]=2;} 
      if ((476<destroyer1LocY+50) &&( destroyer1LocY+50< 525)) {ycord6[9]=2;} }
      
      
      if ((75<destroyer2LocX) &&( destroyer2LocX< 125)) {xcord7[1]=2;} else {xcord7[1]=451;};
      if ((126<destroyer2LocX)&&( destroyer2LocX< 175)) {xcord7[2]=2;} else {xcord7[2]=452;};
      if ((176<destroyer2LocX)&&( destroyer2LocX< 225)) {xcord7[3]=2;} else {xcord7[3]=453;};
      if ((226<destroyer2LocX)&&( destroyer2LocX< 275)) {xcord7[4]=2;} else {xcord7[4]=454;};
      if ((276<destroyer2LocX)&&( destroyer2LocX< 325)) {xcord7[5]=2;} else {xcord7[5]=455;};
      if ((326<destroyer2LocX)&&( destroyer2LocX< 375)) {xcord7[6]=2;} else {xcord7[6]=456;};
      if ((376<destroyer2LocX)&&( destroyer2LocX< 425)) {xcord7[7]=2;} else {xcord7[7]=457;};
      if ((426<destroyer2LocX)&&( destroyer2LocX< 475)) {xcord7[8]=2;} else {xcord7[8]=458;};
      if ((476<destroyer2LocX)&&( destroyer2LocX< 525)) {xcord7[9]=2;} else {xcord7[9]=459;};
      
      if (destroyer2Horizontal == true){
      if ((75<destroyer2LocX+50) &&( destroyer2LocX+50< 125))  {xcord7[1]=2;} 
      if ((126<destroyer2LocX+50) &&( destroyer2LocX+50< 175)) {xcord7[2]=2;} 
      if ((176<destroyer2LocX+50) &&( destroyer2LocX+50< 225)) {xcord7[3]=2;} 
      if ((226<destroyer2LocX+50) &&( destroyer2LocX+50< 275)) {xcord7[4]=2;} 
      if ((276<destroyer2LocX+50) &&( destroyer2LocX+50< 325)) {xcord7[5]=2;} 
      if ((326<destroyer2LocX+50) &&( destroyer2LocX+50< 375)) {xcord7[6]=2;} 
      if ((376<destroyer2LocX+50) &&( destroyer2LocX+50< 425)) {xcord7[7]=2;} 
      if ((426<destroyer2LocX+50) &&( destroyer2LocX+50< 475)) {xcord7[8]=2;} 
      if ((476<destroyer2LocX+50) &&( destroyer2LocX+50< 525)) {xcord7[9]=2;} }
      
      if ((75<destroyer2LocY) && (destroyer2LocY< 125)) {ycord7[1]=2;} else {ycord7[1]=461;};
      if ((126<destroyer2LocY)&&( destroyer2LocY< 175)) {ycord7[2]=2;} else {ycord7[2]=462;};
      if ((176<destroyer2LocY)&&( destroyer2LocY< 225)) {ycord7[3]=2;} else {ycord7[3]=463;};
      if ((226<destroyer2LocY)&&( destroyer2LocY< 275)) {ycord7[4]=2;} else {ycord7[4]=464;};
      if ((276<destroyer2LocY)&&( destroyer2LocY< 325)) {ycord7[5]=2;} else {ycord7[5]=465;};
      if ((326<destroyer2LocY)&&( destroyer2LocY< 375)) {ycord7[6]=2;} else {ycord7[6]=466;};
      if ((376<destroyer2LocY)&&( destroyer2LocY< 425)) {ycord7[7]=2;} else {ycord7[7]=467;};
      if ((426<destroyer2LocY)&&( destroyer2LocY< 475)) {ycord7[8]=2;} else {ycord7[8]=468;};
      if ((476<destroyer2LocY)&&( destroyer2LocY< 525)) {ycord7[9]=2;} else {ycord7[9]=469;};
      
      if (destroyer2Horizontal == false){
      if ((75<destroyer2LocY+50) &&( destroyer2LocY+50< 125))  {ycord7[1]=2;} 
      if ((126<destroyer2LocY+50) &&( destroyer2LocY+50< 175)) {ycord7[2]=2;} 
      if ((176<destroyer2LocY+50) &&( destroyer2LocY+50< 225)) {ycord7[3]=2;} 
      if ((226<destroyer2LocY+50) &&( destroyer2LocY+50< 275)) {ycord7[4]=2;} 
      if ((276<destroyer2LocY+50) &&( destroyer2LocY+50< 325)) {ycord7[5]=2;} 
      if ((326<destroyer2LocY+50) &&( destroyer2LocY+50< 375)) {ycord7[6]=2;} 
      if ((376<destroyer2LocY+50) &&( destroyer2LocY+50< 425)) {ycord7[7]=2;} 
      if ((426<destroyer2LocY+50) &&( destroyer2LocY+50< 475)) {ycord7[8]=2;} 
      if ((476<destroyer2LocY+50) &&( destroyer2LocY+50< 525)) {ycord7[9]=2;} }
      
      
      if ((75<submarine1LocX) &&( submarine1LocX< 125)) {xcord8[1]=2;} else {xcord8[1]=551;};
      if ((126<submarine1LocX)&&( submarine1LocX< 175)) {xcord8[2]=2;} else {xcord8[2]=552;};
      if ((176<submarine1LocX)&&( submarine1LocX< 225)) {xcord8[3]=2;} else {xcord8[3]=553;};
      if ((226<submarine1LocX)&&( submarine1LocX< 275)) {xcord8[4]=2;} else {xcord8[4]=554;};
      if ((276<submarine1LocX)&&( submarine1LocX< 325)) {xcord8[5]=2;} else {xcord8[5]=555;};
      if ((326<submarine1LocX)&&( submarine1LocX< 375)) {xcord8[6]=2;} else {xcord8[6]=556;};
      if ((376<submarine1LocX)&&( submarine1LocX< 425)) {xcord8[7]=2;} else {xcord8[7]=557;};
      if ((426<submarine1LocX)&&( submarine1LocX< 475)) {xcord8[8]=2;} else {xcord8[8]=558;};
      if ((476<submarine1LocX)&&( submarine1LocX< 525)) {xcord8[9]=2;} else {xcord8[9]=559;};
      
      if ((75<submarine1LocY) && (submarine1LocY< 125)) {ycord8[1]=2;} else {ycord8[1]=561;};
      if ((126<submarine1LocY)&&( submarine1LocY< 175)) {ycord8[2]=2;} else {ycord8[2]=562;};
      if ((176<submarine1LocY)&&( submarine1LocY< 225)) {ycord8[3]=2;} else {ycord8[3]=563;};
      if ((226<submarine1LocY)&&( submarine1LocY< 275)) {ycord8[4]=2;} else {ycord8[4]=564;};
      if ((276<submarine1LocY)&&( submarine1LocY< 325)) {ycord8[5]=2;} else {ycord8[5]=565;};
      if ((326<submarine1LocY)&&( submarine1LocY< 375)) {ycord8[6]=2;} else {ycord8[6]=566;};
      if ((376<submarine1LocY)&&( submarine1LocY< 425)) {ycord8[7]=2;} else {ycord8[7]=567;};
      if ((426<submarine1LocY)&&( submarine1LocY< 475)) {ycord8[8]=2;} else {ycord8[8]=568;};
      if ((476<submarine1LocY)&&( submarine1LocY< 525)) {ycord8[9]=2;} else {ycord8[9]=569;};
      
      if ((75<submarine2LocX) &&( submarine2LocX< 125)) {xcord9[1]=2;} else {xcord9[1]=651;};
      if ((126<submarine2LocX)&&( submarine2LocX< 175)) {xcord9[2]=2;} else {xcord9[2]=652;};
      if ((176<submarine2LocX)&&( submarine2LocX< 225)) {xcord9[3]=2;} else {xcord9[3]=653;};
      if ((226<submarine2LocX)&&( submarine2LocX< 275)) {xcord9[4]=2;} else {xcord9[4]=654;};
      if ((276<submarine2LocX)&&( submarine2LocX< 325)) {xcord9[5]=2;} else {xcord9[5]=655;};
      if ((326<submarine2LocX)&&( submarine2LocX< 375)) {xcord9[6]=2;} else {xcord9[6]=656;};
      if ((376<submarine2LocX)&&( submarine2LocX< 425)) {xcord9[7]=2;} else {xcord9[7]=657;};
      if ((426<submarine2LocX)&&( submarine2LocX< 475)) {xcord9[8]=2;} else {xcord9[8]=658;};
      if ((476<submarine2LocX)&&( submarine2LocX< 525)) {xcord9[9]=2;} else {xcord9[9]=659;};
      
      if ((75<submarine2LocY) && (submarine2LocY< 125)) {ycord9[1]=2;} else {ycord9[1]=661;};
      if ((126<submarine2LocY)&&( submarine2LocY< 175)) {ycord9[2]=2;} else {ycord9[2]=662;};
      if ((176<submarine2LocY)&&( submarine2LocY< 225)) {ycord9[3]=2;} else {ycord9[3]=663;};
      if ((226<submarine2LocY)&&( submarine2LocY< 275)) {ycord9[4]=2;} else {ycord9[4]=664;};
      if ((276<submarine2LocY)&&( submarine2LocY< 325)) {ycord9[5]=2;} else {ycord9[5]=665;};
      if ((326<submarine2LocY)&&( submarine2LocY< 375)) {ycord9[6]=2;} else {ycord9[6]=666;};
      if ((376<submarine2LocY)&&( submarine2LocY< 425)) {ycord9[7]=2;} else {ycord9[7]=667;};
      if ((426<submarine2LocY)&&( submarine2LocY< 475)) {ycord9[8]=2;} else {ycord9[8]=668;};
      if ((476<submarine2LocY)&&( submarine2LocY< 525)) {ycord9[9]=2;} else {ycord9[9]=669;};
   
      
      
      
      
    //grid2
    //checkt de horizontale locatie van de schepen
      if ((1075<aircraftLocXSpeler2) &&( aircraftLocXSpeler2< 1125)) {xcord2[1]=1;} else {xcord2[1]=51;};
      if ((1126<aircraftLocXSpeler2)&&( aircraftLocXSpeler2< 1175)) {xcord2[2]=1;} else {xcord2[2]=52;};
      if ((176<aircraftLocXSpeler2)&&( aircraftLocXSpeler2< 1225)) {xcord2[3]=1;} else {xcord2[3]=53;};
      if ((1226<aircraftLocXSpeler2)&&( aircraftLocXSpeler2< 1275)) {xcord2[4]=1;} else {xcord2[4]=54;};
      if ((1276<aircraftLocXSpeler2)&&( aircraftLocXSpeler2< 1325)) {xcord2[5]=1;} else {xcord2[5]=55;};
      if ((1326<aircraftLocXSpeler2)&&( aircraftLocXSpeler2< 1375)) {xcord2[6]=1;} else {xcord2[6]=56;};
      if ((1376<aircraftLocXSpeler2)&&( aircraftLocXSpeler2< 1425)) {xcord2[7]=1;} else {xcord2[7]=57;};
      if ((1426<aircraftLocXSpeler2)&&( aircraftLocXSpeler2< 1475)) {xcord2[8]=1;} else {xcord2[8]=58;};
      if ((1476<aircraftLocXSpeler2)&&( aircraftLocXSpeler2< 1525)) {xcord2[9]=1;} else {xcord2[9]=59;};
    
      if (aircraftHorizontalSpeler2 == true){
      if ((1075<aircraftLocXSpeler2+50) &&( aircraftLocXSpeler2+50< 1125) ||(1075<aircraftLocXSpeler2+100) &&( aircraftLocXSpeler2+100< 1125) || (1075<aircraftLocXSpeler2+150) &&( aircraftLocXSpeler2+150< 1125) || (1075<aircraftLocXSpeler2+200) &&( aircraftLocXSpeler2+200< 1125)) {xcord2[1]=1;} 
      if ((1126<aircraftLocXSpeler2+50) &&( aircraftLocXSpeler2+50< 1175) || (1126<aircraftLocXSpeler2+100) &&( aircraftLocXSpeler2+100< 1175) || (1126<aircraftLocXSpeler2+150) &&( aircraftLocXSpeler2+150< 1175) || (1126<aircraftLocXSpeler2+200) &&( aircraftLocXSpeler2+200< 1175))  {xcord2[2]=1;} 
      if ((1176<aircraftLocXSpeler2+50) &&( aircraftLocXSpeler2+50< 1225) || (1176<aircraftLocXSpeler2+100) &&( aircraftLocXSpeler2+100< 1225) || (1176<aircraftLocXSpeler2+150) &&( aircraftLocXSpeler2+150< 1225) || (1176<aircraftLocXSpeler2+200) &&( aircraftLocXSpeler2+200< 1225))  {xcord2[3]=1;} 
      if ((1226<aircraftLocXSpeler2+50) &&( aircraftLocXSpeler2+50< 1275) || (1226<aircraftLocXSpeler2+100) &&( aircraftLocXSpeler2+100< 1275) || (1226<aircraftLocXSpeler2+150) &&( aircraftLocXSpeler2+150< 1275) || (1226<aircraftLocXSpeler2+200) &&( aircraftLocXSpeler2+200< 1275)) {xcord2[4]=1;} 
      if ((1276<aircraftLocXSpeler2+50) &&( aircraftLocXSpeler2+50< 1325) || (1276<aircraftLocXSpeler2+100) &&( aircraftLocXSpeler2+100< 1325) || (1276<aircraftLocXSpeler2+150) &&( aircraftLocXSpeler2+150< 1325) || (1276<aircraftLocXSpeler2+200) &&( aircraftLocXSpeler2+200< 1325)) {xcord2[5]=1;} 
      if ((1326<aircraftLocXSpeler2+50) &&( aircraftLocXSpeler2+50< 1375) || (1326<aircraftLocXSpeler2+100) &&( aircraftLocXSpeler2+100< 1375) || (1326<aircraftLocXSpeler2+150) &&( aircraftLocXSpeler2+150< 1375) || (1326<aircraftLocXSpeler2+200) &&( aircraftLocXSpeler2+200< 1375)) {xcord2[6]=1;} 
      if ((1376<aircraftLocXSpeler2+50) &&( aircraftLocXSpeler2+50< 1425) || (1376<aircraftLocXSpeler2+100) &&( aircraftLocXSpeler2+100< 1425) || (1376<aircraftLocXSpeler2+150) &&( aircraftLocXSpeler2+150< 1425) || (1376<aircraftLocXSpeler2+200) &&( aircraftLocXSpeler2+200< 1425)) {xcord2[7]=1;} 
      if ((1426<aircraftLocXSpeler2+50) &&( aircraftLocXSpeler2+50< 1475) || (1426<aircraftLocXSpeler2+100) &&( aircraftLocXSpeler2+100< 1475) || (1426<aircraftLocXSpeler2+150) &&( aircraftLocXSpeler2+150< 1475) || (1426<aircraftLocXSpeler2+200) &&( aircraftLocXSpeler2+200< 1475)) {xcord2[8]=1;} 
      if ((1476<aircraftLocXSpeler2+50) &&( aircraftLocXSpeler2+50< 1525) || (1476<aircraftLocXSpeler2+100) &&( aircraftLocXSpeler2+100< 1525) || (1476<aircraftLocXSpeler2+150) &&( aircraftLocXSpeler2+150< 1525) || (1476<aircraftLocXSpeler2+200) &&( aircraftLocXSpeler2+200< 1525)) {xcord2[9]=1;} }
      
    //checkt de verticale locatie van de schepen
      if ((75<aircraftLocYSpeler2) && (aircraftLocYSpeler2< 125)) {ycord2[1]=1;} else {ycord2[1]=61;};
      if ((126<aircraftLocYSpeler2)&&( aircraftLocYSpeler2< 175)) {ycord2[2]=1;} else {ycord2[2]=62;};
      if ((176<aircraftLocYSpeler2)&&( aircraftLocYSpeler2< 225)) {ycord2[3]=1;} else {ycord2[3]=63;};
      if ((226<aircraftLocYSpeler2)&&( aircraftLocYSpeler2< 275)) {ycord2[4]=1;} else {ycord2[4]=64;};
      if ((276<aircraftLocYSpeler2)&&( aircraftLocYSpeler2< 325)) {ycord2[5]=1;} else {ycord2[5]=65;};
      if ((326<aircraftLocYSpeler2)&&( aircraftLocYSpeler2< 375)) {ycord2[6]=1;} else {ycord2[6]=66;};
      if ((376<aircraftLocYSpeler2)&&( aircraftLocYSpeler2< 425)) {ycord2[7]=1;} else {ycord2[7]=67;};
      if ((426<aircraftLocYSpeler2)&&( aircraftLocYSpeler2< 475)) {ycord2[8]=1;} else {ycord2[8]=68;};
      if ((476<aircraftLocYSpeler2)&&( aircraftLocYSpeler2< 525)) {ycord2[9]=1;} else {ycord2[9]=69;};
      
      if (aircraftHorizontalSpeler2 == false){
      if ((75<aircraftLocYSpeler2+50) &&( aircraftLocYSpeler2+50< 125) || (75<aircraftLocYSpeler2+100) &&( aircraftLocYSpeler2+100< 125) || (75<aircraftLocYSpeler2+150) &&( aircraftLocYSpeler2+150< 125) || (75<aircraftLocYSpeler2+200) &&( aircraftLocYSpeler2+200< 125)) {ycord2[1]=1;} 
      if ((126<aircraftLocYSpeler2+50) &&( aircraftLocYSpeler2+50< 175) || (126<aircraftLocYSpeler2+100) &&( aircraftLocYSpeler2+100< 175) || (126<aircraftLocYSpeler2+150) &&( aircraftLocYSpeler2+150< 175) || (126<aircraftLocYSpeler2+200) &&( aircraftLocYSpeler2+200< 175))  {ycord2[2]=1;} 
      if ((176<aircraftLocYSpeler2+50) &&( aircraftLocYSpeler2+50< 225) || (176<aircraftLocYSpeler2+100) &&( aircraftLocYSpeler2+100< 225) || (176<aircraftLocYSpeler2+150) &&( aircraftLocYSpeler2+150< 225) || (176<aircraftLocYSpeler2+200) &&( aircraftLocYSpeler2+200< 225))  {ycord2[3]=1;} 
      if ((226<aircraftLocYSpeler2+50) &&( aircraftLocYSpeler2+50< 275) || (226<aircraftLocYSpeler2+100) &&( aircraftLocYSpeler2+100< 275) || (226<aircraftLocYSpeler2+150) &&( aircraftLocYSpeler2+150< 275) || (226<aircraftLocYSpeler2+200) &&( aircraftLocYSpeler2+200< 275)) {ycord2[4]=1;} 
      if ((276<aircraftLocYSpeler2+50) &&( aircraftLocYSpeler2+50< 325) || (276<aircraftLocYSpeler2+100) &&( aircraftLocYSpeler2+100< 325) || (276<aircraftLocYSpeler2+150) &&( aircraftLocYSpeler2+150< 325) || (276<aircraftLocYSpeler2+200) &&( aircraftLocYSpeler2+200< 325)) {ycord2[5]=1;} 
      if ((326<aircraftLocYSpeler2+50) &&( aircraftLocYSpeler2+50< 375) || (326<aircraftLocYSpeler2+100) &&( aircraftLocYSpeler2+100< 375) || (326<aircraftLocYSpeler2+150) &&( aircraftLocYSpeler2+150< 375) || (326<aircraftLocYSpeler2+200) &&( aircraftLocYSpeler2+200< 375)) {ycord2[6]=1;} 
      if ((376<aircraftLocYSpeler2+50) &&( aircraftLocYSpeler2+50< 425) || (376<aircraftLocYSpeler2+100) &&( aircraftLocYSpeler2+100< 425) || (376<aircraftLocYSpeler2+150) &&( aircraftLocYSpeler2+150< 425) || (376<aircraftLocYSpeler2+200) &&( aircraftLocYSpeler2+200< 425)) {ycord2[7]=1;} 
      if ((426<aircraftLocYSpeler2+50) &&( aircraftLocYSpeler2+50< 475) || (426<aircraftLocYSpeler2+100) &&( aircraftLocYSpeler2+100< 475) || (426<aircraftLocYSpeler2+150) &&( aircraftLocYSpeler2+150< 475) || (426<aircraftLocYSpeler2+200) &&( aircraftLocYSpeler2+200< 475)) {ycord2[8]=1;} 
      if ((476<aircraftLocYSpeler2+50) &&( aircraftLocYSpeler2+50< 525) || (476<aircraftLocYSpeler2+100) &&( aircraftLocYSpeler2+100< 525) || (476<aircraftLocYSpeler2+150) &&( aircraftLocYSpeler2+150< 525) || (476<aircraftLocYSpeler2+200) &&( aircraftLocYSpeler2+200< 525)) {ycord2[9]=1;} }
      
      
      if ((1075<battleshipLocXSpeler2) &&( battleshipLocXSpeler2< 1125)) {xcord11[1]=1;} else {xcord11[1]=151;};
      if ((1126<battleshipLocXSpeler2)&&( battleshipLocXSpeler2< 1175)) {xcord11[2]=1;} else {xcord11[2]=152;};
      if ((1176<battleshipLocXSpeler2)&&( battleshipLocXSpeler2< 1225)) {xcord11[3]=1;} else {xcord11[3]=153;};
      if ((1226<battleshipLocXSpeler2)&&( battleshipLocXSpeler2< 1275)) {xcord11[4]=1;} else {xcord11[4]=154;};
      if ((1276<battleshipLocXSpeler2)&&( battleshipLocXSpeler2< 1325)) {xcord11[5]=1;} else {xcord11[5]=155;};
      if ((1326<battleshipLocXSpeler2)&&( battleshipLocXSpeler2< 1375)) {xcord11[6]=1;} else {xcord11[6]=156;};
      if ((1376<battleshipLocXSpeler2)&&( battleshipLocXSpeler2< 1425)) {xcord11[7]=1;} else {xcord11[7]=157;};
      if ((1426<battleshipLocXSpeler2)&&( battleshipLocXSpeler2< 1475)) {xcord11[8]=1;} else {xcord11[8]=158;};
      if ((1476<battleshipLocXSpeler2)&&( battleshipLocXSpeler2< 1525)) {xcord11[9]=1;} else {xcord11[9]=159;};
      
      if (battleshipHorizontalSpeler2 == true){
      if ((1075<battleshipLocXSpeler2+50) &&( battleshipLocXSpeler2+50< 1125) || (1075<battleshipLocXSpeler2+100) &&( battleshipLocXSpeler2+100< 1125) || (1075<battleshipLocXSpeler2+150) &&( battleshipLocXSpeler2+150< 1125))  {xcord11[1]=1;} 
      if ((1126<battleshipLocXSpeler2+50) &&( battleshipLocXSpeler2+50< 1175) || (1126<battleshipLocXSpeler2+100) &&( battleshipLocXSpeler2+100< 1175) || (1126<battleshipLocXSpeler2+150) &&( battleshipLocXSpeler2+150< 1175)) {xcord11[2]=1;} 
      if ((1176<battleshipLocXSpeler2+50) &&( battleshipLocXSpeler2+50< 1225) || (1176<battleshipLocXSpeler2+100) &&( battleshipLocXSpeler2+100< 1225) || (1176<battleshipLocXSpeler2+150) &&( battleshipLocXSpeler2+150< 1225)) {xcord11[3]=1;} 
      if ((1226<battleshipLocXSpeler2+50) &&( battleshipLocXSpeler2+50< 1275) || (1226<battleshipLocXSpeler2+100) &&( battleshipLocXSpeler2+100< 1275) || (1226<battleshipLocXSpeler2+150) &&( battleshipLocXSpeler2+150< 1275)) {xcord11[4]=1;} 
      if ((1276<battleshipLocXSpeler2+50) &&( battleshipLocXSpeler2+50< 1325) || (1276<battleshipLocXSpeler2+100) &&( battleshipLocXSpeler2+100< 1325) || (1276<battleshipLocXSpeler2+150) &&( battleshipLocXSpeler2+150< 1325)) {xcord11[5]=1;} 
      if ((1326<battleshipLocXSpeler2+50) &&( battleshipLocXSpeler2+50< 1375) || (1326<battleshipLocXSpeler2+100) &&( battleshipLocXSpeler2+100< 1375) || (1326<battleshipLocXSpeler2+150) &&( battleshipLocXSpeler2+150< 1375)) {xcord11[6]=1;} 
      if ((1376<battleshipLocXSpeler2+50) &&( battleshipLocXSpeler2+50< 1425) || (1376<battleshipLocXSpeler2+100) &&( battleshipLocXSpeler2+100< 1425) || (1376<battleshipLocXSpeler2+150) &&( battleshipLocXSpeler2+150< 1425)) {xcord11[7]=1;} 
      if ((1426<battleshipLocXSpeler2+50) &&( battleshipLocXSpeler2+50< 1475) || (1426<battleshipLocXSpeler2+100) &&( battleshipLocXSpeler2+100< 1475) || (1426<battleshipLocXSpeler2+150) &&( battleshipLocXSpeler2+150< 1475)) {xcord11[8]=1;} 
      if ((1476<battleshipLocXSpeler2+50) &&( battleshipLocXSpeler2+50< 1525) || (1476<battleshipLocXSpeler2+100) &&( battleshipLocXSpeler2+100< 1525) || (1476<battleshipLocXSpeler2+150) &&( battleshipLocXSpeler2+150< 1525)) {xcord11[9]=1;} }
      
      
      if ((75<battleshipLocYSpeler2) && (battleshipLocYSpeler2< 125)) {ycord11[1]=1;} else {ycord11[1]=161;};
      if ((126<battleshipLocYSpeler2)&&( battleshipLocYSpeler2< 175)) {ycord11[2]=1;} else {ycord11[2]=162;};
      if ((176<battleshipLocYSpeler2)&&( battleshipLocYSpeler2< 225)) {ycord11[3]=1;} else {ycord11[3]=163;};
      if ((226<battleshipLocYSpeler2)&&( battleshipLocYSpeler2< 275)) {ycord11[4]=1;} else {ycord11[4]=164;};
      if ((276<battleshipLocYSpeler2)&&( battleshipLocYSpeler2< 325)) {ycord11[5]=1;} else {ycord11[5]=165;};
      if ((326<battleshipLocYSpeler2)&&( battleshipLocYSpeler2< 375)) {ycord11[6]=1;} else {ycord11[6]=166;};
      if ((376<battleshipLocYSpeler2)&&( battleshipLocYSpeler2< 425)) {ycord11[7]=1;} else {ycord11[7]=167;};
      if ((426<battleshipLocYSpeler2)&&( battleshipLocYSpeler2< 475)) {ycord11[8]=1;} else {ycord11[8]=168;};
      if ((476<battleshipLocYSpeler2)&&( battleshipLocYSpeler2< 525)) {ycord11[9]=1;} else {ycord11[9]=169;};
      
      if (battleshipHorizontalSpeler2 == false){
      if ((75<battleshipLocYSpeler2+50) &&( battleshipLocYSpeler2+50< 125) || (75<battleshipLocYSpeler2+100) &&( battleshipLocYSpeler2+100< 125) || (75<battleshipLocYSpeler2+150) &&( battleshipLocYSpeler2+150< 125))  {ycord11[1]=1;} 
      if ((126<battleshipLocYSpeler2+50) &&( battleshipLocYSpeler2+50< 175) || (126<battleshipLocYSpeler2+100) &&( battleshipLocYSpeler2+100< 175) || (126<battleshipLocYSpeler2+150) &&( battleshipLocYSpeler2+150< 175)) {ycord11[2]=1;} 
      if ((176<battleshipLocYSpeler2+50) &&( battleshipLocYSpeler2+50< 225) || (176<battleshipLocYSpeler2+100) &&( battleshipLocYSpeler2+100< 225) || (176<battleshipLocYSpeler2+150) &&( battleshipLocYSpeler2+150< 225)) {ycord11[3]=1;} 
      if ((226<battleshipLocYSpeler2+50) &&( battleshipLocYSpeler2+50< 275) || (126<battleshipLocYSpeler2+100) &&( battleshipLocYSpeler2+100< 275) || (226<battleshipLocYSpeler2+150) &&( battleshipLocYSpeler2+150< 275)) {ycord11[4]=1;} 
      if ((276<battleshipLocYSpeler2+50) &&( battleshipLocYSpeler2+50< 325) || (276<battleshipLocYSpeler2+100) &&( battleshipLocYSpeler2+100< 325) || (276<battleshipLocYSpeler2+150) &&( battleshipLocYSpeler2+150< 325)) {ycord11[5]=1;} 
      if ((326<battleshipLocYSpeler2+50) &&( battleshipLocYSpeler2+50< 375) || (326<battleshipLocYSpeler2+100) &&( battleshipLocYSpeler2+100< 375) || (326<battleshipLocYSpeler2+150) &&( battleshipLocYSpeler2+150< 375)) {ycord11[6]=1;} 
      if ((376<battleshipLocYSpeler2+50) &&( battleshipLocYSpeler2+50< 425) || (376<battleshipLocYSpeler2+100) &&( battleshipLocYSpeler2+100< 425) || (376<battleshipLocYSpeler2+150) &&( battleshipLocYSpeler2+150< 425)) {ycord11[7]=1;} 
      if ((426<battleshipLocYSpeler2+50) &&( battleshipLocYSpeler2+50< 475) || (426<battleshipLocYSpeler2+100) &&( battleshipLocYSpeler2+100< 475) || (426<battleshipLocYSpeler2+150) &&( battleshipLocYSpeler2+150< 475)) {ycord11[8]=1;} 
      if ((476<battleshipLocYSpeler2+50) &&( battleshipLocYSpeler2+50< 525) || (476<battleshipLocYSpeler2+100) &&( battleshipLocYSpeler2+100< 525) || (476<battleshipLocYSpeler2+150) &&( battleshipLocYSpeler2+150< 525)) {ycord11[9]=1;} }
      
      
      
      if ((1075<cruiserLocXSpeler2) &&( cruiserLocXSpeler2< 1125)) {xcord12[1]=1;} else {xcord12[1]=251;};
      if ((1126<cruiserLocXSpeler2)&&( cruiserLocXSpeler2< 1175)) {xcord12[2]=1;} else {xcord12[2]=252;};
      if ((1176<cruiserLocXSpeler2)&&( cruiserLocXSpeler2< 1225)) {xcord12[3]=1;} else {xcord12[3]=253;};
      if ((1226<cruiserLocXSpeler2)&&( cruiserLocXSpeler2< 1275)) {xcord12[4]=1;} else {xcord12[4]=254;};
      if ((1276<cruiserLocXSpeler2)&&( cruiserLocXSpeler2< 1325)) {xcord12[5]=1;} else {xcord12[5]=255;};
      if ((1326<cruiserLocXSpeler2)&&( cruiserLocXSpeler2< 1375)) {xcord12[6]=1;} else {xcord12[6]=256;};
      if ((1376<cruiserLocXSpeler2)&&( cruiserLocXSpeler2< 1425)) {xcord12[7]=1;} else {xcord12[7]=257;};
      if ((1426<cruiserLocXSpeler2)&&( cruiserLocXSpeler2< 1475)) {xcord12[8]=1;} else {xcord12[8]=258;};
      if ((1476<cruiserLocXSpeler2)&&( cruiserLocXSpeler2< 1525)) {xcord12[9]=1;} else {xcord12[9]=259;};
      
      if (cruiserHorizontalSpeler2 == true){
      if ((1075<cruiserLocXSpeler2+50) &&( cruiserLocXSpeler2+50< 1125) || (1075<cruiserLocXSpeler2+100) &&( cruiserLocXSpeler2+100< 1125))   {xcord12[1]=1;} 
      if ((1126<cruiserLocXSpeler2+50) &&( cruiserLocXSpeler2+50< 1175) || (1126<cruiserLocXSpeler2+100) &&( cruiserLocXSpeler2+100< 1175)) {xcord12[2]=1;} 
      if ((1176<cruiserLocXSpeler2+50) &&( cruiserLocXSpeler2+50< 1225) || (1176<cruiserLocXSpeler2+100) &&( cruiserLocXSpeler2+100< 1225)) {xcord12[3]=1;} 
      if ((1226<cruiserLocXSpeler2+50) &&( cruiserLocXSpeler2+50< 1275) || (1226<cruiserLocXSpeler2+100) &&( cruiserLocXSpeler2+100< 1275)) {xcord12[4]=1;} 
      if ((1276<cruiserLocXSpeler2+50) &&( cruiserLocXSpeler2+50< 1325) || (1276<cruiserLocXSpeler2+100) &&( cruiserLocXSpeler2+100< 1325)) {xcord12[5]=1;} 
      if ((1326<cruiserLocXSpeler2+50) &&( cruiserLocXSpeler2+50< 1375) || (1326<cruiserLocXSpeler2+100) &&( cruiserLocXSpeler2+100< 1375)) {xcord12[6]=1;} 
      if ((1376<cruiserLocXSpeler2+50) &&( cruiserLocXSpeler2+50< 1425) || (1376<cruiserLocXSpeler2+100) &&( cruiserLocXSpeler2+100< 1425)) {xcord12[7]=1;} 
      if ((1426<cruiserLocXSpeler2+50) &&( cruiserLocXSpeler2+50< 1475) || (1426<cruiserLocXSpeler2+100) &&( cruiserLocXSpeler2+100< 1475)) {xcord12[8]=1;} 
      if ((1476<cruiserLocXSpeler2+50) &&( cruiserLocXSpeler2+50< 1525) || (1476<cruiserLocXSpeler2+100) &&( cruiserLocXSpeler2+100< 1525)) {xcord12[9]=1;} }
      
      
      if ((75<cruiserLocYSpeler2) && (cruiserLocYSpeler2< 125)) {ycord12[1]=1;} else {ycord12[1]=261;};
      if ((126<cruiserLocYSpeler2)&&( cruiserLocYSpeler2< 175)) {ycord12[2]=1;} else {ycord12[2]=262;};
      if ((176<cruiserLocYSpeler2)&&( cruiserLocYSpeler2< 225)) {ycord12[3]=1;} else {ycord12[3]=263;};
      if ((226<cruiserLocYSpeler2)&&( cruiserLocYSpeler2< 275)) {ycord12[4]=1;} else {ycord12[4]=264;};
      if ((276<cruiserLocYSpeler2)&&( cruiserLocYSpeler2< 325)) {ycord12[5]=1;} else {ycord12[5]=265;};
      if ((326<cruiserLocYSpeler2)&&( cruiserLocYSpeler2< 375)) {ycord12[6]=1;} else {ycord12[6]=266;};
      if ((376<cruiserLocYSpeler2)&&( cruiserLocYSpeler2< 425)) {ycord12[7]=1;} else {ycord12[7]=267;};
      if ((426<cruiserLocYSpeler2)&&( cruiserLocYSpeler2< 475)) {ycord12[8]=1;} else {ycord12[8]=268;};
      if ((476<cruiserLocYSpeler2)&&( cruiserLocYSpeler2< 525)) {ycord12[9]=1;} else {ycord12[9]=269;};
      
      
      if (cruiserHorizontalSpeler2 == false){
      if ((75<cruiserLocYSpeler2+50) &&( cruiserLocYSpeler2+50< 125) || (75<cruiserLocYSpeler2+100) &&( cruiserLocYSpeler2+100< 125))  {ycord12[1]=1;} 
      if ((126<cruiserLocYSpeler2+50) &&( cruiserLocYSpeler2+50< 175) || (126<cruiserLocYSpeler2+100) &&( cruiserLocYSpeler2+100< 175)) {ycord12[2]=1;} 
      if ((176<cruiserLocYSpeler2+50) &&( cruiserLocYSpeler2+50< 225) || (226<cruiserLocYSpeler2+100) &&( cruiserLocYSpeler2+100< 275)) {ycord12[4]=1;} 
      if ((276<cruiserLocYSpeler2+50) &&( cruiserLocYSpeler2+50< 325) || (276<cruiserLocYSpeler2+100) &&( cruiserLocYSpeler2+100< 325)) {ycord12[5]=1;} 
      if ((326<cruiserLocYSpeler2+50) &&( cruiserLocYSpeler2+50< 375) || (326<cruiserLocYSpeler2+100) &&( cruiserLocYSpeler2+100< 375)) {ycord12[6]=1;} 
      if ((376<cruiserLocYSpeler2+50) &&( cruiserLocYSpeler2+50< 425) || (376<cruiserLocYSpeler2+100) &&( cruiserLocYSpeler2+100< 425)) {ycord12[7]=1;} 
      if ((426<cruiserLocYSpeler2+50) &&( cruiserLocYSpeler2+50< 475) || (426<cruiserLocYSpeler2+100) &&( cruiserLocYSpeler2+100< 475)) {ycord12[8]=1;} 
      if ((476<cruiserLocYSpeler2+50) &&( cruiserLocYSpeler2+50< 525) || (476<cruiserLocYSpeler2+100) &&( cruiserLocYSpeler2+100< 525)) {ycord12[9]=1;} }
      
      
      if ((1075<destroyer1LocXSpeler2) &&( destroyer1LocXSpeler2< 1125)) {xcord13[1]=1;} else {xcord13[1]=351;};
      if ((1126<destroyer1LocXSpeler2)&&( destroyer1LocXSpeler2< 1175)) {xcord13[2]=1;} else {xcord13[2]=352;};
      if ((1176<destroyer1LocXSpeler2)&&( destroyer1LocXSpeler2< 1225)) {xcord13[3]=1;} else {xcord13[3]=353;};
      if ((1226<destroyer1LocXSpeler2)&&( destroyer1LocXSpeler2< 1275)) {xcord13[4]=1;} else {xcord13[4]=354;};
      if ((1276<destroyer1LocXSpeler2)&&( destroyer1LocXSpeler2< 1325)) {xcord13[5]=1;} else {xcord13[5]=355;};
      if ((1326<destroyer1LocXSpeler2)&&( destroyer1LocXSpeler2< 1375)) {xcord13[6]=1;} else {xcord13[6]=356;};
      if ((1376<destroyer1LocXSpeler2)&&( destroyer1LocXSpeler2< 1425)) {xcord13[7]=1;} else {xcord13[7]=357;};
      if ((1426<destroyer1LocXSpeler2)&&( destroyer1LocXSpeler2< 1475)) {xcord13[8]=1;} else {xcord13[8]=358;};
      if ((1476<destroyer1LocXSpeler2)&&( destroyer1LocXSpeler2< 1525)) {xcord13[9]=1;} else {xcord13[9]=359;};
      
      if (destroyer1HorizontalSpeler2 == true){
      if ((1075<destroyer1LocXSpeler2+50) &&( destroyer1LocXSpeler2+50< 1125))  {xcord13[1]=1;} 
      if ((1126<destroyer1LocXSpeler2+50) &&( destroyer1LocXSpeler2+50< 1175)) {xcord13[2]=1;} 
      if ((1176<destroyer1LocXSpeler2+50) &&( destroyer1LocXSpeler2+50< 1225)) {xcord13[3]=1;} 
      if ((1226<destroyer1LocXSpeler2+50) &&( destroyer1LocXSpeler2+50< 1275)) {xcord13[4]=1;} 
      if ((1276<destroyer1LocXSpeler2+50) &&( destroyer1LocXSpeler2+50< 1325)) {xcord13[5]=1;} 
      if ((1326<destroyer1LocXSpeler2+50) &&( destroyer1LocXSpeler2+50< 1375)) {xcord13[6]=1;} 
      if ((1376<destroyer1LocXSpeler2+50) &&( destroyer1LocXSpeler2+50< 1425)) {xcord13[7]=1;} 
      if ((1426<destroyer1LocXSpeler2+50) &&( destroyer1LocXSpeler2+50< 1475)) {xcord13[8]=1;} 
      if ((1476<destroyer1LocXSpeler2+50) &&( destroyer1LocXSpeler2+50< 1525)) {xcord13[9]=1;} }
      
      
      if ((75<destroyer1LocYSpeler2) && (destroyer1LocYSpeler2< 125)) {ycord13[1]=1;} else {ycord13[1]=361;};
      if ((126<destroyer1LocYSpeler2)&&( destroyer1LocYSpeler2< 175)) {ycord13[2]=1;} else {ycord13[2]=362;};
      if ((176<destroyer1LocYSpeler2)&&( destroyer1LocYSpeler2< 225)) {ycord13[3]=1;} else {ycord13[3]=363;};
      if ((226<destroyer1LocYSpeler2)&&( destroyer1LocYSpeler2< 275)) {ycord13[4]=1;} else {ycord13[4]=364;};
      if ((276<destroyer1LocYSpeler2)&&( destroyer1LocYSpeler2< 325)) {ycord13[5]=1;} else {ycord13[5]=365;};
      if ((326<destroyer1LocYSpeler2)&&( destroyer1LocYSpeler2< 375)) {ycord13[6]=1;} else {ycord13[6]=366;};
      if ((376<destroyer1LocYSpeler2)&&( destroyer1LocYSpeler2< 425)) {ycord13[7]=1;} else {ycord13[7]=367;};
      if ((426<destroyer1LocYSpeler2)&&( destroyer1LocYSpeler2< 475)) {ycord13[8]=1;} else {ycord13[8]=368;};
      if ((476<destroyer1LocYSpeler2)&&( destroyer1LocYSpeler2< 525)) {ycord13[9]=1;} else {ycord13[9]=369;}; 
      
      if (destroyer1HorizontalSpeler2 == false){
      if ((75<destroyer1LocYSpeler2+50) &&( destroyer1LocYSpeler2+50< 125))  {ycord13[1]=1;} 
      if ((126<destroyer1LocYSpeler2+50) &&( destroyer1LocYSpeler2+50< 175)) {ycord13[2]=1;} 
      if ((176<destroyer1LocYSpeler2+50) &&( destroyer1LocYSpeler2+50< 225)) {ycord13[3]=1;} 
      if ((226<destroyer1LocYSpeler2+50) &&( destroyer1LocYSpeler2+50< 275)) {ycord13[4]=1;} 
      if ((276<destroyer1LocYSpeler2+50) &&( destroyer1LocYSpeler2+50< 325)) {ycord13[5]=1;} 
      if ((326<destroyer1LocYSpeler2+50) &&( destroyer1LocYSpeler2+50< 375)) {ycord13[6]=1;} 
      if ((376<destroyer1LocYSpeler2+50) &&( destroyer1LocYSpeler2+50< 425)) {ycord13[7]=1;} 
      if ((426<destroyer1LocYSpeler2+50) &&( destroyer1LocYSpeler2+50< 475)) {ycord13[8]=1;} 
      if ((476<destroyer1LocYSpeler2+50) &&( destroyer1LocYSpeler2+50< 525)) {ycord13[9]=1;} }
      
      
      if ((1075<destroyer2LocXSpeler2) &&( destroyer2LocXSpeler2< 1125)) {xcord14[1]=1;} else {xcord14[1]=451;};
      if ((1126<destroyer2LocXSpeler2)&&( destroyer2LocXSpeler2< 1175)) {xcord14[2]=1;} else {xcord14[2]=452;};
      if ((1176<destroyer2LocXSpeler2)&&( destroyer2LocXSpeler2< 1225)) {xcord14[3]=1;} else {xcord14[3]=453;};
      if ((1226<destroyer2LocXSpeler2)&&( destroyer2LocXSpeler2< 1275)) {xcord14[4]=1;} else {xcord14[4]=454;};
      if ((1276<destroyer2LocXSpeler2)&&( destroyer2LocXSpeler2< 1325)) {xcord14[5]=1;} else {xcord14[5]=455;};
      if ((1326<destroyer2LocXSpeler2)&&( destroyer2LocXSpeler2< 1375)) {xcord14[6]=1;} else {xcord14[6]=456;};
      if ((1376<destroyer2LocXSpeler2)&&( destroyer2LocXSpeler2< 1425)) {xcord14[7]=1;} else {xcord14[7]=457;};
      if ((1426<destroyer2LocXSpeler2)&&( destroyer2LocXSpeler2< 1475)) {xcord14[8]=1;} else {xcord14[8]=458;};
      if ((1476<destroyer2LocXSpeler2)&&( destroyer2LocXSpeler2< 1525)) {xcord14[9]=1;} else {xcord14[9]=459;};
      
      if (destroyer2HorizontalSpeler2 == true){
      if ((1075<destroyer2LocXSpeler2+50) &&( destroyer2LocXSpeler2+50< 1125))  {xcord14[1]=1;} 
      if ((1126<destroyer2LocXSpeler2+50) &&( destroyer2LocXSpeler2+50< 1175)) {xcord14[2]=1;} 
      if ((1176<destroyer2LocXSpeler2+50) &&( destroyer2LocXSpeler2+50< 1225)) {xcord14[3]=1;} 
      if ((1226<destroyer2LocXSpeler2+50) &&( destroyer2LocXSpeler2+50< 1275)) {xcord14[4]=1;} 
      if ((1276<destroyer2LocXSpeler2+50) &&( destroyer2LocXSpeler2+50< 1325)) {xcord14[5]=1;} 
      if ((1326<destroyer2LocXSpeler2+50) &&( destroyer2LocXSpeler2+50< 1375)) {xcord14[6]=1;} 
      if ((1376<destroyer2LocXSpeler2+50) &&( destroyer2LocXSpeler2+50< 1425)) {xcord14[7]=1;} 
      if ((1426<destroyer2LocXSpeler2+50) &&( destroyer2LocXSpeler2+50< 1475)) {xcord14[8]=1;} 
      if ((1476<destroyer2LocXSpeler2+50) &&( destroyer2LocXSpeler2+50< 1525)) {xcord14[9]=1;} }
      
      if ((75<destroyer2LocYSpeler2) && (destroyer2LocYSpeler2< 125)) {ycord14[1]=1;} else {ycord14[1]=461;};
      if ((126<destroyer2LocYSpeler2)&&( destroyer2LocYSpeler2< 175)) {ycord14[2]=1;} else {ycord14[2]=462;};
      if ((176<destroyer2LocYSpeler2)&&( destroyer2LocYSpeler2< 225)) {ycord14[3]=1;} else {ycord14[3]=463;};
      if ((226<destroyer2LocYSpeler2)&&( destroyer2LocYSpeler2< 275)) {ycord14[4]=1;} else {ycord14[4]=464;};
      if ((276<destroyer2LocYSpeler2)&&( destroyer2LocYSpeler2< 325)) {ycord14[5]=1;} else {ycord14[5]=465;};
      if ((326<destroyer2LocYSpeler2)&&( destroyer2LocYSpeler2< 375)) {ycord14[6]=1;} else {ycord14[6]=466;};
      if ((376<destroyer2LocYSpeler2)&&( destroyer2LocYSpeler2< 425)) {ycord14[7]=1;} else {ycord14[7]=467;};
      if ((426<destroyer2LocYSpeler2)&&( destroyer2LocYSpeler2< 475)) {ycord14[8]=1;} else {ycord14[8]=468;};
      if ((476<destroyer2LocYSpeler2)&&( destroyer2LocYSpeler2< 525)) {ycord14[9]=1;} else {ycord14[9]=469;};
      
      if (destroyer2HorizontalSpeler2 == false){
      if ((75<destroyer2LocYSpeler2+50) &&( destroyer2LocYSpeler2+50< 125))  {ycord14[1]=1;} 
      if ((126<destroyer2LocYSpeler2+50) &&( destroyer2LocYSpeler2+50< 175)) {ycord14[2]=1;} 
      if ((176<destroyer2LocYSpeler2+50) &&( destroyer2LocYSpeler2+50< 225)) {ycord14[3]=1;} 
      if ((226<destroyer2LocYSpeler2+50) &&( destroyer2LocYSpeler2+50< 275)) {ycord14[4]=1;} 
      if ((276<destroyer2LocYSpeler2+50) &&( destroyer2LocYSpeler2+50< 325)) {ycord14[5]=1;} 
      if ((326<destroyer2LocYSpeler2+50) &&( destroyer2LocYSpeler2+50< 175)) {ycord14[6]=1;} 
      if ((376<destroyer2LocYSpeler2+50) &&( destroyer2LocYSpeler2+50< 425)) {ycord14[7]=1;} 
      if ((426<destroyer2LocYSpeler2+50) &&( destroyer2LocYSpeler2+50< 475)) {ycord14[8]=1;} 
      if ((476<destroyer2LocYSpeler2+50) &&( destroyer2LocYSpeler2+50< 525)) {ycord14[9]=1;} }
      
      
      if ((1075<submarine1LocXSpeler2) &&( submarine1LocXSpeler2< 1125)) {xcord15[1]=1;} else {xcord15[1]=551;};
      if ((1126<submarine1LocXSpeler2)&&( submarine1LocXSpeler2< 1175)) {xcord15[2]=1;} else {xcord15[2]=552;};
      if ((1176<submarine1LocXSpeler2)&&( submarine1LocXSpeler2< 1225)) {xcord15[3]=1;} else {xcord15[3]=553;};
      if ((1226<submarine1LocXSpeler2)&&( submarine1LocXSpeler2< 1275)) {xcord15[4]=1;} else {xcord15[4]=554;};
      if ((1276<submarine1LocXSpeler2)&&( submarine1LocXSpeler2< 1325)) {xcord15[5]=1;} else {xcord15[5]=555;};
      if ((1326<submarine1LocXSpeler2)&&( submarine1LocXSpeler2< 1375)) {xcord15[6]=1;} else {xcord15[6]=556;};
      if ((1376<submarine1LocXSpeler2)&&( submarine1LocXSpeler2< 1425)) {xcord15[7]=1;} else {xcord15[7]=557;};
      if ((1426<submarine1LocXSpeler2)&&( submarine1LocXSpeler2< 1475)) {xcord15[8]=1;} else {xcord15[8]=558;};
      if ((1476<submarine1LocXSpeler2)&&( submarine1LocXSpeler2< 1525)) {xcord15[9]=1;} else {xcord15[9]=559;};
      
      if ((75<submarine1LocYSpeler2) && (submarine1LocYSpeler2< 125)) {ycord15[1]=1;} else {ycord15[1]=561;};
      if ((126<submarine1LocYSpeler2)&&( submarine1LocYSpeler2< 175)) {ycord15[2]=1;} else {ycord15[2]=562;};
      if ((176<submarine1LocYSpeler2)&&( submarine1LocYSpeler2< 225)) {ycord15[3]=1;} else {ycord15[3]=563;};
      if ((226<submarine1LocYSpeler2)&&( submarine1LocYSpeler2< 275)) {ycord15[4]=1;} else {ycord15[4]=564;};
      if ((276<submarine1LocYSpeler2)&&( submarine1LocYSpeler2< 325)) {ycord15[5]=1;} else {ycord15[5]=565;};
      if ((326<submarine1LocYSpeler2)&&( submarine1LocYSpeler2< 375)) {ycord15[6]=1;} else {ycord15[6]=566;};
      if ((376<submarine1LocYSpeler2)&&( submarine1LocYSpeler2< 425)) {ycord15[7]=1;} else {ycord15[7]=567;};
      if ((426<submarine1LocYSpeler2)&&( submarine1LocYSpeler2< 475)) {ycord15[8]=1;} else {ycord15[8]=568;};
      if ((476<submarine1LocYSpeler2)&&( submarine1LocYSpeler2< 525)) {ycord15[9]=1;} else {ycord15[9]=569;};
      
      if ((1075<submarine2LocXSpeler2) &&( submarine2LocXSpeler2< 1125)) {xcord16[1]=1;} else {xcord16[1]=651;};
      if ((1126<submarine2LocXSpeler2)&&( submarine2LocXSpeler2< 1175)) {xcord16[2]=1;} else {xcord16[2]=652;};
      if ((1176<submarine2LocXSpeler2)&&( submarine2LocXSpeler2< 1225)) {xcord16[3]=1;} else {xcord16[3]=653;};
      if ((1226<submarine2LocXSpeler2)&&( submarine2LocXSpeler2< 1275)) {xcord16[4]=1;} else {xcord16[4]=654;};
      if ((1276<submarine2LocXSpeler2)&&( submarine2LocXSpeler2< 1325)) {xcord16[5]=1;} else {xcord16[5]=655;};
      if ((1326<submarine2LocXSpeler2)&&( submarine2LocXSpeler2< 1375)) {xcord16[6]=1;} else {xcord16[6]=656;};
      if ((1376<submarine2LocXSpeler2)&&( submarine2LocXSpeler2< 1425)) {xcord16[7]=1;} else {xcord16[7]=657;};
      if ((1426<submarine2LocXSpeler2)&&( submarine2LocXSpeler2< 1475)) {xcord16[8]=1;} else {xcord16[8]=658;};
      if ((1476<submarine2LocXSpeler2)&&( submarine2LocXSpeler2< 1525)) {xcord16[9]=1;} else {xcord16[9]=659;};
      
      if ((75<submarine2LocYSpeler2) && (submarine2LocYSpeler2< 125)) {ycord16[1]=1;} else {ycord16[1]=661;};
      if ((126<submarine2LocYSpeler2)&&( submarine2LocYSpeler2< 175)) {ycord16[2]=1;} else {ycord16[2]=662;};
      if ((176<submarine2LocYSpeler2)&&( submarine2LocYSpeler2< 225)) {ycord16[3]=1;} else {ycord16[3]=663;};
      if ((226<submarine2LocYSpeler2)&&( submarine2LocYSpeler2< 275)) {ycord16[4]=1;} else {ycord16[4]=664;};
      if ((276<submarine2LocYSpeler2)&&( submarine2LocYSpeler2< 325)) {ycord16[5]=1;} else {ycord16[5]=665;};
      if ((326<submarine2LocYSpeler2)&&( submarine2LocYSpeler2< 375)) {ycord16[6]=1;} else {ycord16[6]=666;};
      if ((376<submarine2LocYSpeler2)&&( submarine2LocYSpeler2< 425)) {ycord16[7]=1;} else {ycord16[7]=667;};
      if ((426<submarine2LocYSpeler2)&&( submarine2LocYSpeler2< 475)) {ycord16[8]=1;} else {ycord16[8]=668;};
      if ((476<submarine2LocYSpeler2)&&( submarine2LocYSpeler2< 525)) {ycord16[9]=1;} else {ycord16[9]=669;};
   

  
    //grid3
  int m=mouseX; //checkt de horizontale locatie van de schepen
      if ((75<m) &&( m< 108.5)) {xcord3[1]=1;} else {xcord3[1]=31;};
      if ((108.5<m)&&( m< 142)) {xcord3[2]=1;} else {xcord3[2]=32;};
      if ((142<m)&&( m< 175.5)) {xcord3[3]=1;} else {xcord3[3]=33;};
      if ((175.5<m)&&( m< 209)) {xcord3[4]=1;} else {xcord3[4]=34;};
      if ((209<m)&&( m< 242.5)) {xcord3[5]=1;} else {xcord3[5]=35;};
      if ((242.5<m)&&( m< 276)) {xcord3[6]=1;} else {xcord3[6]=36;};
      if ((276<m)&&( m< 309.5)) {xcord3[7]=1;} else {xcord3[7]=37;};
      if ((309.5<m)&&( m< 343)) {xcord3[8]=1;} else {xcord3[8]=38;};
      if ((343<m)&&( m< 376.5)) {xcord3[9]=1;} else {xcord3[9]=39;};
      
   int n=mouseY; //checkt de verticale locatie van de schepen
      if ((575<n)&&( n< 608.5)) {ycord3[1]=1;} else {ycord3[1]=41;};
      if ((608.5<n)&&( n< 642)) {ycord3[2]=1;} else {ycord3[2]=42;};
      if ((642<n)&&( n< 675.5)) {ycord3[3]=1;} else {ycord3[3]=43;};
      if ((675.5<n)&&( n< 709)) {ycord3[4]=1;} else {ycord3[4]=44;};
      if ((709 <n)&&( n< 742.5)) {ycord3[5]=1;} else {ycord3[5]=45;};
      if ((742.5<n)&&( n< 776)) {ycord3[6]=1;} else {ycord3[6]=46;};
      if ((776<n)&&( n< 809.5)) {ycord3[7]=1;} else {ycord3[7]=47;};
      if ((809.5<n)&&( n< 843)) {ycord3[8]=1;} else {ycord3[8]=48;};
      if ((843<n)&&( n< 876.5)) {ycord3[9]=1;} else {ycord3[9]=49;};

  
  
   //grid 4
  int o=mouseX; //checkt de horizontale locatie van de schepen
      if ((1225<o)&&( o< 1259.5)) {xcord4[1]=2;} else {xcord4[1]=71;};
      if ((1259.5<o)&&( o< 1293)) {xcord4[2]=2;} else {xcord4[2]=72;};
      if ((1293<o)&&( o< 1326.5)) {xcord4[3]=2;} else {xcord4[3]=73;};
      if ((1326.5<o)&&( o< 1360)) {xcord4[4]=2;} else {xcord4[4]=74;};
      if ((1360<o)&&( o< 1393.5)) {xcord4[5]=2;} else {xcord4[5]=75;};
      if ((1393.5<o)&&( o< 1427)) {xcord4[6]=2;} else {xcord4[6]=76;};
      if ((1427<o)&&( o< 1460.5)) {xcord4[7]=2;} else {xcord4[7]=77;};
      if ((1460.5<o)&&( o< 1494)) {xcord4[8]=2;} else {xcord4[8]=78;};
      if ((1494<o)&&( o< 1527.5)) {xcord4[9]=2;} else {xcord4[9]=79;};
      
   int p=mouseY; //checkt de verticale locatie van de schepen
      if ((575<p)&&( p< 608.5)) {ycord4[1]=2;} else {ycord4[1]=81;};
      if ((608.5<p)&&( p< 642)) {ycord4[2]=2;} else {ycord4[2]=82;};
      if ((642<p)&&( p< 675.5)) {ycord4[3]=2;} else {ycord4[3]=83;};
      if ((675.5<p)&&( p< 709)) {ycord4[4]=2;} else {ycord4[4]=84;};
      if ((709 <p)&&( p< 742.5)) {ycord4[5]=2;} else {ycord4[5]=85;};
      if ((742.5<p)&&( p< 776)) {ycord4[6]=2;} else {ycord4[6]=86;};
      if ((776<p)&&( p< 809.5)) {ycord4[7]=2;} else {ycord4[7]=87;};
      if ((809.5<p)&&( p< 843)) {ycord4[8]=2;} else {ycord4[8]=88;};
      if ((843<p)&&( p< 876.5)) {ycord4[9]=2;} else {ycord4[9]=89;}

 if (geraakt1 == 18) {
          textSize(80);
          text("Speler 1 wint!", 500, 500); 
        }
 if (geraakt2 == 18) {
          textSize(80);
          text("Speler 2 wint!", 500, 500); 
        }
}

//private void mousePressed() {
//  clicked = true;
//}


//private void mouseReleased() {
//  clicked = false;
//}




public void mouseClicked() {
   /*Point mouse;
   mouse = MouseInfo.getPointerInfo().getLocation();
   //println( "X=" + mouse.x + " Y=" + mouse.y );
   int mousex = mouseX-11;
   int mousey = mouseY-16;
   
    image (kruisje, mouse.x,mouse.y);

  /**/
    
  //clicked = true;
  
  if (zeeslag3==true){
  if (mousePressed && 
          ((xcord[1]==xcord4[1] || xcord[2]==xcord4[2] || xcord[3]==xcord4[3] || xcord[4]==xcord4[4] || xcord[5]==xcord4[5] || xcord[6]==xcord4[6] || xcord[7]==xcord4[7] || xcord[8]==xcord4[8] || xcord[9]==xcord4[9]) &&
          (ycord[1]==ycord4[1] || ycord[2]==ycord4[2] || ycord[3]==ycord4[3] || ycord[4]==ycord4[4] || ycord[5]==ycord4[5] || ycord[6]==ycord4[6] || ycord[7]==ycord4[7] || ycord[8]==ycord4[8] || ycord[9]==ycord4[9]) ||
          (xcord5[1]==xcord4[1] || xcord5[2]==xcord4[2] || xcord5[3]==xcord4[3] || xcord5[4]==xcord4[4] || xcord5[5]==xcord4[5] || xcord5[6]==xcord4[6] || xcord5[7]==xcord4[7] || xcord5[8]==xcord4[8] || xcord5[9]==xcord4[9]) &&
          (ycord5[1]==ycord4[1] || ycord5[2]==ycord4[2] || ycord5[3]==ycord4[3] || ycord5[4]==ycord4[4] || ycord5[5]==ycord4[5] || ycord5[6]==ycord4[6] || ycord5[7]==ycord4[7] || ycord5[8]==ycord4[8] || ycord5[9]==ycord4[9]) ||
          (xcord6[1]==xcord4[1] || xcord6[2]==xcord4[2] || xcord6[3]==xcord4[3] || xcord6[4]==xcord4[4] || xcord6[5]==xcord4[5] || xcord6[6]==xcord4[6] || xcord6[7]==xcord4[7] || xcord6[8]==xcord4[8] || xcord6[9]==xcord4[9]) &&
          (ycord6[1]==ycord4[1] || ycord6[2]==ycord4[2] || ycord6[3]==ycord4[3] || ycord6[4]==ycord4[4] || ycord6[5]==ycord4[5] || ycord6[6]==ycord4[6] || ycord6[7]==ycord4[7] || ycord6[8]==ycord4[8] || ycord6[9]==ycord4[9]) ||
          (xcord7[1]==xcord4[1] || xcord7[2]==xcord4[2] || xcord7[3]==xcord4[3] || xcord7[4]==xcord4[4] || xcord7[5]==xcord4[5] || xcord7[6]==xcord4[6] || xcord7[7]==xcord4[7] || xcord7[8]==xcord4[8] || xcord7[9]==xcord4[9]) &&
          (ycord7[1]==ycord4[1] || ycord7[2]==ycord4[2] || ycord7[3]==ycord4[3] || ycord7[4]==ycord4[4] || ycord7[5]==ycord4[5] || ycord7[6]==ycord4[6] || ycord7[7]==ycord4[7] || ycord7[8]==ycord4[8] || ycord7[9]==ycord4[9]) ||
          (xcord8[1]==xcord4[1] || xcord8[2]==xcord4[2] || xcord8[3]==xcord4[3] || xcord8[4]==xcord4[4] || xcord8[5]==xcord4[5] || xcord8[6]==xcord4[6] || xcord8[7]==xcord4[7] || xcord8[8]==xcord4[8] || xcord8[9]==xcord4[9]) &&
          (ycord8[1]==ycord4[1] || ycord8[2]==ycord4[2] || ycord8[3]==ycord4[3] || ycord8[4]==ycord4[4] || ycord8[5]==ycord4[5] || ycord8[6]==ycord4[6] || ycord8[7]==ycord4[7] || ycord8[8]==ycord4[8] || ycord8[9]==ycord4[9]) ||
          (xcord9[1]==xcord4[1] || xcord9[2]==xcord4[2] || xcord9[3]==xcord4[3] || xcord9[4]==xcord4[4] || xcord9[5]==xcord4[5] || xcord9[6]==xcord4[6] || xcord9[7]==xcord4[7] || xcord9[8]==xcord4[8] || xcord9[9]==xcord4[9]) &&
          (ycord9[1]==ycord4[1] || ycord9[2]==ycord4[2] || ycord9[3]==ycord4[3] || ycord9[4]==ycord4[4] || ycord9[5]==ycord4[5] || ycord9[6]==ycord4[6] || ycord9[7]==ycord4[7] || ycord9[8]==ycord4[8] || ycord9[9]==ycord4[9]) ||
          (xcord10[1]==xcord4[1] || xcord10[2]==xcord4[2] || xcord10[3]==xcord4[3] || xcord10[4]==xcord4[4] || xcord10[5]==xcord4[5] || xcord10[6]==xcord4[6] || xcord10[7]==xcord4[7] || xcord10[8]==xcord4[8] || xcord10[9]==xcord4[9]) &&
          (ycord10[1]==ycord4[1] || ycord10[2]==ycord4[2] || ycord10[3]==ycord4[3] || ycord10[4]==ycord4[4] || ycord10[5]==ycord4[5] || ycord10[6]==ycord4[6] || ycord10[7]==ycord4[7] || ycord10[8]==ycord4[8] || ycord10[9]==ycord4[9]) 
          ))
      //als zowel op de horizontale als verticale as iets wordt gevonden dan is het raak
        {

          raak.add( new Circle(mouseX, mouseY));
          player2Score = player2Score+1;
          println("raak1");
         

        fill (200);
        textSize(32);
        text("RAAK!", 940, 460);

       zeeslag3 = false;
        zeeslag4 = true;}
        else if (mousePressed && (575 < mouseY) && (mouseY< 876) && (1225 < mouseX) && (mouseX < 1527 ))
        {
          
          gemist.add( new Miss(mouseX, mouseY));
          
        println("gemist2");
          zeeslag3 = false;
        zeeslag4 = true;}
  }
             
  if (zeeslag4==true){     
  if (mousePressed && 
          ((xcord2[1]==xcord3[1] || xcord2[2]==xcord3[2] || xcord2[3]==xcord3[3] || xcord2[4]==xcord3[4] || xcord2[5]==xcord3[5] || xcord2[6]==xcord3[6] || xcord2[7]==xcord3[7] || xcord2[8]==xcord3[8] || xcord2[9]==xcord3[9]) &&
          (ycord2[1]==ycord3[1] || ycord2[2]==ycord3[2] || ycord2[3]==ycord3[3] || ycord2[4]==ycord3[4] || ycord2[5]==ycord3[5] || ycord2[6]==xcord3[6] || ycord2[7]==ycord3[7] || ycord2[8]==ycord3[8] || ycord2[9]==ycord3[9]) ||
            (xcord12[1]==xcord3[1] || xcord12[2]==xcord3[2] || xcord12[3]==xcord3[3] || xcord12[4]==xcord3[4] || xcord12[5]==xcord3[5] || xcord12[6]==xcord3[6] || xcord12[7]==xcord3[7] || xcord12[8]==xcord3[8] || xcord12[9]==xcord3[9]) &&
          (ycord12[1]==ycord3[1] || ycord12[2]==ycord3[2] || ycord12[3]==ycord3[3] || ycord12[4]==ycord3[4] || ycord12[5]==ycord3[5] || ycord12[6]==ycord3[6] || ycord12[7]==ycord3[7] || ycord12[8]==ycord3[8] || ycord12[9]==ycord3[9]) ||
          (xcord13[1]==xcord3[1] || xcord13[2]==xcord3[2] || xcord13[3]==xcord3[3] || xcord13[4]==xcord3[4] || xcord13[5]==xcord3[5] || xcord13[6]==xcord3[6] || xcord13[7]==xcord3[7] || xcord13[8]==xcord3[8] || xcord13[9]==xcord3[9]) &&
          (ycord13[1]==ycord3[1] || ycord13[2]==ycord3[2] || ycord13[3]==ycord3[3] || ycord13[4]==ycord3[4] || ycord13[5]==ycord3[5] || ycord13[6]==ycord3[6] || ycord13[7]==ycord3[7] || ycord13[8]==ycord3[8] || ycord13[9]==ycord3[9]) ||
          (xcord14[1]==xcord3[1] || xcord14[2]==xcord3[2] || xcord14[3]==xcord3[3] || xcord14[4]==xcord3[4] || xcord14[5]==xcord3[5] || xcord14[6]==xcord3[6] || xcord14[7]==xcord3[7] || xcord14[8]==xcord3[8] || xcord14[9]==xcord3[9]) &&
          (ycord14[1]==ycord3[1] || ycord14[2]==ycord3[2] || ycord14[3]==ycord3[3] || ycord14[4]==ycord3[4] || ycord14[5]==ycord3[5] || ycord14[6]==ycord3[6] || ycord14[7]==ycord3[7] || ycord14[8]==ycord3[8] || ycord14[9]==ycord3[9]) ||
          (xcord15[1]==xcord3[1] || xcord15[2]==xcord3[2] || xcord15[3]==xcord3[3] || xcord15[4]==xcord3[4] || xcord15[5]==xcord3[5] || xcord15[6]==xcord3[6] || xcord15[7]==xcord3[7] || xcord15[8]==xcord3[8] || xcord15[9]==xcord3[9]) &&
          (ycord15[1]==ycord3[1] || ycord15[2]==ycord3[2] || ycord15[3]==ycord3[3] || ycord15[4]==ycord3[4] || ycord15[5]==ycord3[5] || ycord15[6]==ycord3[6] || ycord15[7]==ycord3[7] || ycord15[8]==ycord3[8] || ycord15[9]==ycord3[9]) ||
          (xcord16[1]==xcord3[1] || xcord16[2]==xcord3[2] || xcord16[3]==xcord3[3] || xcord16[4]==xcord3[4] || xcord16[5]==xcord3[5] || xcord16[6]==xcord3[6] || xcord16[7]==xcord3[7] || xcord16[8]==xcord3[8] || xcord16[9]==xcord3[9]) &&
          (ycord16[1]==ycord3[1] || ycord16[2]==ycord3[2] || ycord16[3]==ycord3[3] || ycord16[4]==ycord3[4] || ycord16[5]==ycord3[5] || ycord16[6]==ycord3[6] || ycord16[7]==ycord3[7] || ycord16[8]==ycord3[8] || ycord16[9]==ycord3[9]) ||
          (xcord11[1]==xcord3[1] || xcord11[2]==xcord3[2] || xcord11[3]==xcord3[3] || xcord11[4]==xcord3[4] || xcord11[5]==xcord3[5] || xcord11[6]==xcord3[6] || xcord11[7]==xcord3[7] || xcord11[8]==xcord3[8] || xcord11[9]==xcord3[9]) &&
          (ycord11[1]==ycord3[1] || ycord11[2]==ycord3[2] || ycord11[3]==ycord3[3] || ycord11[4]==ycord3[4] || ycord11[5]==ycord3[5] || ycord11[6]==ycord3[6] || ycord11[7]==ycord3[7] || ycord11[8]==ycord3[8] || ycord11[9]==ycord3[9]) 
          ))
        {
          
          raak.add( new Circle(mouseX, mouseY));
          player1Score = player1Score+1;
         println("raak2");
          fill (200);
        textSize(32);
        text("RAAK!", 550, 460);
        zeeslag4 = false;
         zeeslag3 = true;
}
        else if (mousePressed && (575 < mouseY) && (mouseY< 876) && (75 < mouseX) && (mouseX < 381 ))
        {
          
          gemist.add( new Miss(mouseX, mouseY));
           println("gemist2");
        
        
          zeeslag4 = false;
         zeeslag3 = true;}
        }
          
        
    
}
  

}