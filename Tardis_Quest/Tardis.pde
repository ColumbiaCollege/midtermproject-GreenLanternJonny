class Tardis {
  //tardis image:
  PImage policeBox;

  float TardisX, TardisY;
  float wide;
  float high;
  //float xpos, ypos;
  int edge = 42;
  int xdirection = 0*width, ydirection = 0*height;

  Tardis() {
    policeBox = loadImage("TARDIS.png");
    TardisX = random(edge, xdirection);
    TardisY = random(edge, ydirection);
    wide =.09765625*width;
    high =.09765625*height;
  }
  void reset() {
    TardisX = random(edge, xdirection*width);
    TardisY = random(edge, ydirection*height);
    wide =.09765625*width;
    high =.09765625*height;
  }

  void display() {
    fill(0, 0, 255);


    if (TardisX > width-edge|| TardisX < edge) {
      xdirection *= -1;
    }
    if (TardisY > height-edge || TardisY < edge) {
      ydirection *= -1;
    }
    noTint();

    image(policeBox, TardisX, TardisY, wide, high);
    //this will make the Tardis move to a new location if hit
    if ( abs(doc.DocY - ship.TardisY) < doc.high/5+ship.high/5 && abs(doc.DocX - ship.TardisX )< doc.wide/5+ship.wide/5 ) {
      TardisX = random(.048828125*width, .9375*width);
      TardisY = random(.048828125*width, .9375*width);
      score++;
      //every 10 a dalek will spawn out.
      if (score%9 == 1) {
        addBot =true;
        
      }
    }
  }
}
