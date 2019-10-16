// midterm by: Jonathan Layes
// Tardis_Quest game.

//example found at: https://www.openprocessing.org/sketch/49289/
//border example: https://processing.org/examples/bounce.html
//score coding found at: 
//https://forum.processing.org/one/topic/how-to-setup-scoring-on-a-shooting-game-urgent.html
//score coding made by: tfguy44
//major thank yous to Joe and Jackie for helping
//////////////////////////

//Doctor Position
float DocX, DocY;

PFont font;//font used

PImage start;

//background:
PImage background;

//Tardis Position
float TardisX, TardisY;
int edge = 20;
int xdirection = 1, ydirection = 1;

//starting score:
int score=0;
//loading daleks
ArrayList<dalek> robots;
//boolean to add dalek.
boolean addBot = false;
//boolean for gameover.
boolean gameover = false;

//loading Doctor and Tardis
Doctor doc;
Tardis ship;

void setup() {

  if (addBot==true) {
    robots.add(new dalek());
  }
  //size of screen
  size(1024, 1024);

  //arraylist to keep adding dalek so game (wont crash computer.)
  robots = new ArrayList<dalek>();

  doc = new Doctor();
  ship = new Tardis();

  //images and font being setup:
  start = loadImage("tardisStart.png");//instrctuions.
  font = createFont("impact.ttf", 15); // font being used, font size.
  background = loadImage("TardisBackground.jpg");
}


void draw() {
  gameover=false;
  if (addBot) {
    robots.add( new dalek());
    addBot =false;
  }
  //tinting insturctions image.
  tint(#F23D3D);
  image(start, .390625*width, .390625*height, 412, 412);

  gamestart();
}
//method when score increases
//and displaying doctor/doctor turning and tardis
void gamestart() {

  noTint();

  imageMode(CENTER);
  image(background, .5*width, .5*height, 1*width, 1*height);


  textAlign(CENTER, 40);
  fill(0);


  textFont(font); // the font that will appear in program.

  fill(#455E76);// font coloring.

  text( "Score: " + score, width/2, 30 );

  doc.display();
  doc.matt();
  ship.display();

  for (dalek robot : robots) {

    robot.display();
  }

  if (gameover) {

    restart();
  }



  //main screen
  if (score == 0) {
    //how to play the game!//
    tint(#F23D3D);
    image(start, .390625*width, .390625*height, 412, 412);
  }
}


void reset() { // method:when you get a game over
  //robots.reset();
  for (int i = robots.size() - 1; i >= 0; i--) {
    //dalek cann = robots.get(i);
    //if (.finished()) {
    robots.remove(i);
    //}
  }
  ship.reset();
  doc.reset();
  score=0;
}
void restart() { // this method is used for dalek object
  reset();
}



//when key is pressed
void keyPressed() { 

  doc.move();
}
