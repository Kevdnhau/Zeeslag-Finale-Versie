final static ArrayList<Miss> gemist = new ArrayList();

class Miss {
  float x, y;
  Miss(float _x, float _y) {
    x=_x;
    y=_y;
  }
  void run() {
    display ();
  } 
  void display() {
    fill(255, 255, 255);
    ellipse(x, y, 20, 20);
  }
}