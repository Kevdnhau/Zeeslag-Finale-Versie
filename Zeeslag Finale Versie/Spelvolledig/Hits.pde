final static ArrayList<Circle> raak = new ArrayList();

class Circle {
  float x, y;
  Circle(float _x, float _y) {
    x=_x;
    y=_y;
  }
  void run() {
    display ();
  } 
  void display() {
    fill(255, 0, 0);
    ellipse(x, y, 20, 20);
  }
}