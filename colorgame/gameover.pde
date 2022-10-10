void gameover() {
  
  ///////gif
   numberOfFrames = 47;
    size(800, 800);
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if (f == 47) f = 0;
  
  ///////font
   girlsstory = createFont("Girls Story.ttf", 300);

 textFont(girlsstory);
 
 //score
 textSize(50);
 fill(0);
 text("SCORE", 200, 50);
 text("HIGHSCORE", 600, 50);
 text(highscore, 600, 100);
 text(score, 200, 100);
 
 //highscore
 if (score> highscore) {
    highscore = score;
  }
  
 
/////you lose text

counter = counter + 1;
if(counter < 10) {
  fill(pblue);
  textSize(100);
  text("YOU LOSE", 400, 300);
}


  if(counter > 10) {
  fill(ppurple);
  textSize(100);
  text("YOU LOSE", 400, 300);
}

  if(counter > 20) {
  fill(ppurple);
  textSize(100);
  text("YOU LOSE", 400, 300);
}

if(counter == 25){
  counter = 0;
}
///////////////////

////////////restart
////restart tactile
  fill(252);
    if(mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
     fill(344, 12, 96);
  } else{
   fill(252);
  }
   strokeWeight(8);
  rect(300, 500, 200, 100);//restart box
 
  fill(0);
  textSize(50);
  text("RESTART", 400, 550);
}
  
void gameoverClicks() {
  if(mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
   mode = INTRO;
  }

}
