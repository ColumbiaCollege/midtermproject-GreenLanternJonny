class Doctor {

  //doctor image:
  PImage dw;//right side
  PImage dw4;//left side
  PImage dw2;//front
  PImage dw3;//back

  float DocX, DocY;
  float wide;
  float high;
  float speed = 3.0;
  Doctor() {
    dw = loadImage("Smith.png");
    dw2 = loadImage("Smithfront.png");
    dw3 = loadImage("SmithBack.png");
    dw4 = loadImage("SmithFlipped.png");

    DocX = random(.5*width, .5*height);
    DocY = random(.5*width, .5*height);
    wide =.0456*width;
    high =.0456*height;
  }
  void reset() {

    DocX = random(.5*width, .5*height);
    DocY = random(.5*width, .5*height);
    wide =.0456*width;
    high =.0456*height;
  }


  void display() {  //temp doctor
    noTint();
    matt();
  }
  void matt() {
    if (key == 'a') {

      image(dw4, DocX, DocY, wide, high);
    } else if (key =='d') {

      image(dw, DocX, DocY, wide, high);
    } else if (key =='w') {

      image(dw3, DocX, DocY, wide, high);
    } else if (key =='s') {

      image(dw2, DocX, DocY, wide, high);
    } else {

      image(dw2, DocX, DocY, wide, high);
    }
  }
  void move() {
    if (key == 'd') {

      DocX = DocX+speed+0.5;
    }
    if (key =='a') {

      DocX = DocX-speed-0.5;
    }

    if (key =='w' ) {

      DocY = DocY-speed-0.5;
    }
    if (key =='s' ) {

      DocY = DocY+speed+0.5;
    }
  }
}
