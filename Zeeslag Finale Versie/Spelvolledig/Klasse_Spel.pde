class Spel {

  int spatie = 50;
  int grid1x = 75;
  int grid1y = 75;
  int grid2x = 1075;
  int grid2y = 75;
  int grid1grootte = 451;
  int bootbreedte = 25;
  int bootlengte = 200;
  float[] xcoordinatenblokjesgrid1  = {75, 125, 175, 225, 275, 325, 375, 425, 475} ;
  float xxcoordinatenblokjesgrid1 = 44; 
  int xxcoordinatenblokjesgrid2 = 1044;
  float[] xcoordinatenblokjesgridklein1x = {75, 108, 142, 175, 209, 242, 276, 309, 343};
  float [] xcoordinatenblokjesgridklein2x = {75 + 1150, 108 + 1150, 142 + 1150, 175 +  1150, 209 +  1150, 242 +  1150, 276 +  1150, 309 +  1150, 343 +  1150};
  float[] xcoordinatenblokjesgrid2 = {1075, 1125, 1175, 1225, 1275, 1325, 1375, 1425, 1475};
  float[] ycoordinatenblokjesgridklein1y = {575, 608, 642, 675, 708, 742, 776, 809, 843};
  float ycoordinatenblokjesgrid2 = 44;
  int aantalcoordinatenvakjes = 9;
  float tekstnummersx = 69.5;
  int tekstnummersx2 = 568;
  float tekstnummersy = 52;
  float tekstnummersy2 = 1052;
  float tekstnummersy4 = 1208;
  int tekstknummersy3 = 58; 
  int points = 14;
  int gridkleingrootte = 976;
  int gridkleingroottex = 75;
  float spatie2 = 33.5;
  float aantalknoppen = 3;
  float knopx = 700; 
  float knopy[] = {100, 175, 250};
  float knopgroottex = 200;
  float knopgroottey = 50;
  String [] letters = {"A", "B", "C", "D", "E", "F", "G", "H", "I"};
  int [] cijfers = {1, 2, 3, 4, 5, 6, 7, 8, 9};
  String [] knoppen2 = {"Toets Bindingen", "Regels"};
  float [] achtergrondx = {grid1x, grid2x, gridkleingroottex, 1225};
  float [] achtergrondy = {grid2y, grid2y, 575, 575};
  float [] achtergrondlengte = {450, grid1grootte, 301, 301};
  float [] xafbeeldingknop = {knopx, knopx, knopx, 556, 811};
  float [] yafbeeldingknop = {100 ,175, 250};
  PImage zeeslag;
  PImage knoppen;
  PImage zeegroot;
  PImage zeeklein;
  PImage blokjexgroot;
  PImage blokjeygroot;
  PImage blokjexklein;
  PImage blokjeyklein;
  PFont lettertype;
  float [] xafbeeldingzee1 = {75, 1075};
  float [] yafbeeldingzee1 = {75, 75};
  float [] xafbeeldingzee2 = {75, 1225};
  float [] yafbeeldingzee2 = {575, 575};
  Spel() {
  }
  void setup1() {
    zeeslag = loadImage("zeeslag.jpg");
    knoppen = loadImage("knoppen.jpeg");
    zeegroot = loadImage("zeegroot.png");
    zeeklein = loadImage("zeeklein.png");
    blokjexgroot = loadImage("blokjexgroot.jpg");
    blokjeygroot = loadImage("blokjeygroot.jpg");
    blokjexklein = loadImage("blokjexklein.jpg");
    blokjeyklein = loadImage("blokjeyklein.jpg");
    lettertype = loadFont("Times-Italic-48.vlw");
  }

  void afbeeldingentotaal() {


    image(zeeslag, 0, 0);
  }
  void afbeeldingknoppen() {
    for (int i = 0; i < aantalknoppen; i++) {
      image(knoppen, xafbeeldingknop[i], yafbeeldingknop[i]);
    }
  }

  void afbeeldingzee() {
    for (int i = 0; i < 2; i ++) { 
      for (int j = 0; j < 2; j++) {
        image(zeegroot, xafbeeldingzee1[i], yafbeeldingzee1[i]);
        image(zeeklein, xafbeeldingzee2[j], yafbeeldingzee2[j]);
      }
    }
  }
  void tekst() {
    textFont(lettertype, 32);
    fill(0, 255, 0);
    text("Zeeslag ingenieursproject groep: " + points, 546, 27);
  }

  void tekstgrid12() {
    fill(0);
    textSize(25);


    for (int i=0; i < 9; i++) {
      for (int j=0; j < 9; j++) {
        text(letters[j], tekstnummersy, 107.5 + spatie * j);
        text(letters[j], tekstnummersy2, 107.5 + spatie * j);
        text(cijfers[i], 92 + spatie * i, tekstnummersx);
        text(cijfers[i], 1092 + spatie * i, tekstnummersx);
      }
    }
  }
  void afbeeldingcoordinatenblokjesgroot() {


    for (int i=0; i < 9; i++) {
      for (int j=0; j < 9; j++) {
        image(blokjeygroot, 44, 75 + spatie * j);
        image(blokjeygroot, 1044, 75 + spatie * j);
        image(blokjexgroot, 75 + spatie * i, 44);
        image(blokjexgroot, 1075 + spatie * i, 44);
      }
    }
  }
  void tekstgrid34() {
    fill(0);
    textSize(12.5);

    for (int i=0; i < 9; i++) {
      for (int j=0; j < 9; j++) {
        text(letters[j], tekstknummersy3, 597 + spatie2 * j);
        text(letters[j], tekstnummersy4, 597 + spatie2 * j);
        text(cijfers[i], 87 + spatie2 * i, tekstnummersx2);
        text(cijfers[i], 1237 + spatie2 * i, tekstnummersx2);
      }
    }
  }

 void afbeeldingcoordinatenblokjesklein() {

    for (int i=0; i < 9; i++) {
      for (int j=0; j < 9; j++) {
        image(blokjeyklein, 50, 576 + spatie2 * j);
        image(blokjeyklein, 1200, 576 + spatie2 * j);
        image(blokjexklein, 75 + spatie2 * i, 550);
        image(blokjexklein, 1225 + spatie2 * i, 550);
      }
    }
  }





  void coordinatenblokjes() {
    fill(0, 255, 0);
    strokeWeight(4);
    for (int i = 0; i < aantalcoordinatenvakjes; i++) {
      rect(xcoordinatenblokjesgrid1[i], xxcoordinatenblokjesgrid1, spatie, 31);
      rect(xxcoordinatenblokjesgrid1, xcoordinatenblokjesgrid1[i], 31, spatie);
      rect(xcoordinatenblokjesgrid2[i], xxcoordinatenblokjesgrid1, spatie, 31);
      rect(xxcoordinatenblokjesgrid2, xcoordinatenblokjesgrid1[i], 31, spatie);
      //grid 1&2 klein
      rect(xcoordinatenblokjesgridklein1x[i], 550, 34, 25);
      rect(xcoordinatenblokjesgridklein2x[i], 550, 34, 25);
      rect(50, ycoordinatenblokjesgridklein1y[i], 25, 34);
      rect(1200, ycoordinatenblokjesgridklein1y[i], 25, 34);

      for (int j = 0; j < aantalknoppen; j++) {
        rect(knopx, knopy[j], knopgroottex, knopgroottey);
      }
    }
  } 

  void tekstknoppen() {
    textSize(25);
    fill(0);

    for (int i=0; i < 2; i++) {
      float a = 720;
      text(knoppen2 [i], a + 48 *i, 210 + 75 * i);
    }
  } 

  void achtergrond() {
    fill (0, 100, 200);

    for (int i = 0; i < 4; i++) 
      rect(achtergrondx [i], achtergrondy [i], achtergrondlengte[i], achtergrondlengte [i]);
  }

 

  void grid1() {
    stroke (255);
    strokeWeight (2);
    //grid1
    for (int i = 75; i < grid1x + grid1grootte; i = i + spatie) 
    {
      line (grid1x, i, grid1x + grid1grootte, i );
      line (i, grid1y, i, grid1x + grid1grootte );
    }
  }
  void grid2() {
    stroke (255);
    strokeWeight (2);
    //grid2
    for (int j = 75; j < grid2y + grid1grootte; j = j + spatie) 
    {
      line (grid2x, j, grid2x + grid1grootte, j );
    }
    for (int j = 1075; j < grid2x + grid1grootte; j = j + spatie) 
    {
      line (j, grid2y, j, grid2y + grid1grootte );
    }
  }
  void gridklein1() {
    stroke (255);
    strokeWeight (2);
    for (float i = 575; i < gridkleingroottex + gridkleingrootte - 170; i = i + spatie2) 
      line(gridkleingroottex, i, gridkleingrootte - 600, i );

    for (float j = 75; j < gridkleingroottex + gridkleingrootte - 650; j = j + spatie2)
      line(j, 575, j, gridkleingrootte - 100);
  }
  void gridklein2() {
    stroke (255);
    strokeWeight (2);
    for (float i = 575; i < 575 + 326; i = i + spatie2) {
      line(1225, i, 1225 + 301, i);
    }
    for (float i = 1225; i < 1225 + 326; i = i + spatie2) {
      line(i, 575, i, 575 + 326 - 25);
    }
  }
}