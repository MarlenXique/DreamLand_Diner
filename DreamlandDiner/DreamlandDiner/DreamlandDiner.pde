void setup(){
  size(850, 850);
  textMode(CENTER);
  imageMode(CENTER);
  rectMode(CORNER);
  
  talkingChef = loadImage("talkingchef.png");
  
  sceneBackgroundBeatrice = loadImage("scenebackgroundbeatrice.png");
  sceneBackgroundLarry = loadImage("scenebackgroundlarry.png");
  sceneBackgroundStanley = loadImage("scenebackgroundstanley.png");
  
  player = loadImage("player.png");
  playerWaitress = loadImage("playerwaitress.png");
  playerBusBoy = loadImage("playerbusboy.png");
  playerStanley = loadImage("playerstanley.png");
  
   wakeupScene[0] = loadImage("wakeupscene0.png");
   wakeupScene[1] = loadImage("wakeupscene1.png");
   wakeupScene[2] = loadImage("wakeupscene2.png");
   wakeupScene[3] = loadImage("wakeupscene3.png");
   
  playerTalkingToBea = new PImage[3]; 
  beaTalking = new PImage[3]; 
  
  for (int i = 0; i < 3; i++) {
    playerTalkingToBea[i] = loadImage("playertalkingtobea" + i + ".png"); 
    beaTalking[i] = loadImage("beatalking" + i + ".png"); 
  }
}

void draw() {
  background(#3d3254);
 //instructions scene
  if(scene == 1){
     fill(#d9113d);
     stroke(#783316);
     strokeWeight(5);
     rect(width/2 - 200, height/2 + 200, 400, 100);
     
     fill(#d9113d);
     stroke(#783316);
     strokeWeight(30);
     rect(width/2 - 300, height/2 - 350, 600, 500);
     
     fill(0);
     textSize(50);
     text(title, width/2 - 280, height/2 - 150);
     
     fill(255);
     textSize(30);
     text(start,width/2 - 280, height/2 - 100, 500, 500);
   } else if(scene == 2){ 
   
     //wake up scene
   
   image(wakeupScene[currentWakeupScene], width/2, height/2);
   image(talkingChef, width/2, height/2);
   fill(0);
   text(wakeupSceneDialogue[wakeupSceneCurrentDialogueIndex], 20, 700);
   
   if (wakeupSceneCurrentDialogueIndex == wakeupSceneDialogue.length - 1 && sceneTransition) {
      scene = 3;
    }
   
   } 
    else if(scene == 3){
      
      //waitress maze scene 

      image(player, playerX, playerY,playerSize,playerSize);      
      playerWaitress.resize(150, 0);
      image(playerWaitress, width/2 - 150, height/2 - 50);
      image(sceneBackgroundBeatrice, width/2, height/2);
      
      //rect(width/2 - 100 , height/2 - 125, 100, 100);
      if (playerInRect(width/2 - 100 , height/2 - 125, 100, 100) 
        && mouseInRect(width/2 - 200 , height/2 - 125, 100, 100)) {
      scene = 4;
      }


      if (playerInRect(width/2 + 310, height/2 - 400, 100, 100)) {
        scene = 5;
      }     
   }else if(scene == 4 ){
    
     //player talks to bea
     
     // Display player and Bea talking images
    image(playerTalkingToBea[dialogueIndex], width/4, height/2);
    image(beaTalking[dialogueIndex], 3 * width/4, height/2);
    
    // Display player's dialogue
    fill(255);
    textSize(20);
    textAlign(RIGHT);
    text("Player: " + playerToBeaDialogue[dialogueIndex], width/4 - 20, height/2 + 100);
    
    // Display Bea's dialogue
    textAlign(LEFT);
    text("Bea: " + beaDialogue[dialogueIndex], 3*width/4 + 20, height/2 + 100);
    
    // Increment dialogue index when mouse is clicked
    if (mousePressed && dialogueIndex < playerToBeaDialogue.length - 1) {
      dialogueIndex++;
    }
 }else if(scene == 5 ){
     
     image(player, playerX, playerY,playerSize,playerSize);
     image(sceneBackgroundLarry, width/2, height/2);
     playerBusBoy.resize(155, 0);
     image(playerBusBoy, width/2 + 200, height/2 + 15);
     //rect(width/2 + 310, height/2 + 310, 100, 100);
      if (playerInRect(width/2 + 310, height/2 + 310, 100, 100)) {
        scene = 6;
      }
   }
   else if(scene == 6){
     image(player, playerX, playerY,playerSize,playerSize);
     image(sceneBackgroundStanley, width/2, height/2);
     playerStanley.resize(155,0);
     image(playerStanley, width/2 + 250, height/2 + 10);
     
     
   }
    playerCanWalk();
}
