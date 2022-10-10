void intro() {
  theme.play();
  timer = 0;
  score = 0;
  ////////gif
  

  size(800, 800);
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if (f == 47) f = 0;
  //end gif
  //words
  girlsstory = createFont("Girls Story.ttf", 130);

//text

  textSize(font);
  textAlign(CENTER, CENTER);

////color game text
counter = counter + 1;

if(counter < 10) {
  fill(pblue);
  textFont(girlsstory);
  text("COLOR GAME", 400, 200);
} 
if(counter > 10) {
  fill(ppurple);
  textFont(girlsstory);
  text("COLOR GAME", 400, 200);
}

if(counter > 20) {
fill(ppink);
  textFont(girlsstory);
  text("COLOR GAME", 400, 200);
}


if(counter == 25){
  counter = 0;
}
////////

////////start
  textSize(50);
  fill(252);
  //tactile start
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    fill(344, 12, 96);
  } else {
    fill(252);
  }
  strokeWeight(8);
  rect(300, 450, 200, 100);

  fill(0);
  text("START", 400, 500);

 

}



void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    mode = GAME;
  }
}
