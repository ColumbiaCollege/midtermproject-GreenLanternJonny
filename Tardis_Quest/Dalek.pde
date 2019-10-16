class dalek {
  PImage dalek;//dalek image
  float red = random(0, 255);
  float green = random(0, 255);
  float blue = random(0, 255);
  float dalekX, dalekY;
  float wide;
  float high;
  //float xpos, ypos;
  int edge = 512;
  int ydirection;
  float speed = 0.9;
  dalek() {

    dalek = loadImage("Dalek.png");

    dalekX = dalekX+speed;
    dalekY = random(.5*height, .5*height);
    wide =.078125*width;
    high =.078125*height;
  }
  void reset() {
    dalekX = -5;
    dalekY = random(25, 480);
    wide =.078125*width;
    high =.078125*width;
  }

  void display() {
    fill(245, 200, 0);
    tint(red, green, blue);
    dalekX = dalekX + speed;
    if (dalekX > width) {
      dalekX= -5;
      dalekY = random(25, 480);
    }
     //tint(red, green, blue);
     //image(dalek, dalekX, dalekY, wide, high);
    for (int i = -5; i < 4; i = i+100) {

      tint(red, green, blue);
      image(dalek, dalekX+i, dalekY, wide, high);
   }



    if ( abs(doc.DocY - dalekY) < doc.high/3+high/3 && abs(doc.DocX - dalekX )< doc.wide/3+wide/3 ) {

      gameover=true;
    }
  }
}
