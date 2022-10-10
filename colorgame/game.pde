void game() {
  //background
  background(252);
  bkg = loadImage("background.jpeg");
  image(bkg, 0, 0, 800, 800);

  fill(0);
////timer
  timer = timer + 15;

  if (timer == 405) {
    mode = GAMEOVER;
      fail.rewind();
      fail.play();
  }
  stroke(red);
  line(0, 400, 800, 400);
stroke(0);
  //scoreboard
  textSize(50);
  fill(0);
  text(score, 100, 100);

  //text
  girlsstory = createFont("Girls Story.ttf", 70);

//////////match
////////tactle match
  fill(252);
  if (dist(180, 620, mouseX, mouseY) < 140) {
    fill(74, 193, 87 );
  } else {
    fill(252);
  }


  circle(180, 620, 280); //match circle

  textSize(700);
  textAlign(CENTER, CENTER);
  fill(0);
  textFont(girlsstory);
  text("MATCH", 180, 600);



///////tactile dont match
  fill(252);
  if (dist(610, 620, mouseX, mouseY) < 140) {
    fill(344, 12, 96);
  } else {
    fill(252);
  }
  
  
  circle(610, 620, 280); //dont match circle

  textSize(70);
  textAlign(CENTER, CENTER);
  fill(0);
  textFont(girlsstory);
  text("DONT", 620, 550);


  textSize(70);
  textAlign(CENTER, CENTER);
  fill(0);
  textFont(girlsstory);
  text("MATCH", 600, 650);

  textSize(100);


  
//////////////////gamee
  fill(colors[randomColor]);
  text(words[randomWord], 400, timer);


  if (randomWord == randomColor) {
    if (clicker == 1 ) {

      randomWord = (int) random(0, 5);
      randomColor = (int) random(0, 5);
      score++;
 
      timer = 0;
      success.rewind();
      success.play();

      split();
    }
    if (clicker == 2 ) {
      mode = GAMEOVER;
      fail.rewind();
      fail.play();
    }
    clicker = 3;
  }

  if (randomWord != randomColor) {
    if (clicker == 2) {
      randomWord = (int) random(0, 5);
      randomColor = (int) random(0, 5);
        timer = 0;
      score++;
      success.rewind();
      success.play();


      split();
    }
    if (clicker == 1) {
      mode = GAMEOVER;
      fail.rewind();
      fail.play();
     
    }
    clicker = 3;
  }

 
  
}

void gameClicks() {

  if (dist(180, 620, mouseX, mouseY) < 280) {
    clicker = 1;
  }

  if (dist(610, 620, mouseX, mouseY) < 280) {
    clicker = 2;
  }
}

void split () {
  randomNum = (int) random(0, 10);

  if (randomNum < 5) randomWord = randomColor;
  if (randomNum >= 5) {
    while (randomWord == randomColor) {
      randomColor = (int) random(0, 5);
    }
  }
}
