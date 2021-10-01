Die daniel;
 void setup()
  {
    size(400,500);
    noLoop();
  }
  void draw()
  {
    background(165);
    int sum = 0;
    for(int x = 20; x <= 340; x += 80) {
      for(int y = 20; y <= 340; y += 80) {
        daniel = new Die(x, y);
        daniel.show();
        sum = sum += daniel.getR();
      }
    }
    text("Total: " + sum, 170, 450);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int mySize, myX, myY, r;
      
      Die(int x, int y) //constructor
      {
          mySize = 40;
          myX = x;
          myY = y;
          r = (int)(Math.random()*6)+1;
      }
      int getR() {
        return r;
      }
      void show()
      {
          rect(myX, myY, mySize, mySize, 10);
          if(r == 1) {
            fill(0);
            ellipse((myX + 20),(myY + 20),5,5);
            fill(255);
          } else if(r == 2) {
            fill(0);
            ellipse((myX + 30),(myY + 10),5,5);
            ellipse((myX + 10),(myY + 30),5,5);
            fill(255);
          } else if(r == 3) {
            fill(0);
            ellipse((myX + 30),(myY + 10),5,5);
            ellipse((myX + 20),(myY + 20),5,5);
            ellipse((myX + 10),(myY + 30),5,5);
            fill(255);
          } else if(r == 4) {
            fill(0);
            ellipse((myX + 10),(myY + 10),5,5);
            ellipse((myX + 30),(myY + 10),5,5);
            ellipse((myX + 10),(myY + 30),5,5);
            ellipse((myX + 30),(myY + 30),5,5);
            fill(255);
          } else if(r == 5) {
            fill(0);
            ellipse((myX + 10),(myY + 10),5,5);
            ellipse((myX + 30),(myY + 10),5,5);
            ellipse((myX + 20),(myY + 20),5,5);
            ellipse((myX + 10),(myY + 30),5,5);
            ellipse((myX + 30),(myY + 30),5,5);
            fill(255);
          } else if(r == 6) {
            fill(0);
            ellipse((myX + 10),(myY + 10),5,5);
            ellipse((myX + 10),(myY + 20),5,5);
            ellipse((myX + 10),(myY + 30),5,5);
            ellipse((myX + 30),(myY + 10),5,5);
            ellipse((myX + 30),(myY + 20),5,5);
            ellipse((myX + 30),(myY + 30),5,5);
            fill(255);
          }
          
          
      }
  }
