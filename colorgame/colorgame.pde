//Emily


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//pallete
color red = #ff0000;
color green = #00ff00;
color blue = #0000ff;
color yellow = #ffea00;
color orange = #ff7b00;
float d;
color pred = #720714;
color porange = #e36414;
color pyellow = #fdffb6;
color pgreen = #caffbf;
color pblue = #00406c;
color ppurple = #bdb2ff;
color ppink = #ffc8dd;
///////////////////////

///////////////
float randomNum;
float timer;
PImage bkg;
PImage[] gif;
PFont girlsstory;

//////////////

String[] words = {"RED", "GREEN", "BLUE", "YELLOW", "ORANGE"};
color [] colors = {red, green, blue, yellow, orange};

int randomWord = (int) random(0, 5);
int randomColor  = (int) random(0, 5);

////////////////
final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = INTRO;  //1: intro screen, 2: game playing, 3: gameover screen, 4: pause
////////////////
int font;
int numberOfFrames;
int f;
//////////////////
int clicker;
final int TRUE = 1;
final int FALSE = 2;
final int RESET = 3;
/////////////////
int y;
int highscore, score;
int counter;
int left, right;
int COLORGAME;
///////////////


//sound
Minim minim;
AudioPlayer theme, success, fail;

void setup() {
  size(800, 800);
  stroke(10);
  score = 0;
  highscore = 0;
  textMode(CENTER);
  timer = 0;
  counter = 0;

  //minim
  minim = new Minim(this);
  success = minim.loadFile("SUCCESS.wav");
  theme = minim.loadFile("MUSIC.mp3");
  fail = minim.loadFile("number5_data_ushot.mp3");


  //gif
  numberOfFrames = 47;
  gif = new PImage[47] ;

  int i = 0;
  while ( i  < 47) {
    gif[i] = loadImage("frame_"+i+"_delay-0.12s.gif");
    i=i+1;
  }
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {
    pause();
  } else {
    println("?");
  }
}
