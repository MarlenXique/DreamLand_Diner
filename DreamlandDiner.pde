void setup() {
    size(850, 850);
    textMode(CENTER);
    imageMode(CENTER);
    rectMode(CORNER);
    textAlign(CENTER, CENTER);
    
    //minim = new Minim(this);
    //collisionSound = minim.loadFile("collision.wav");
    
    player = loadImage("player.png");
    recipe = loadImage("recipe.png");
    
    talkingChef = loadImage("talkingchef.png");
    sceneBackgroundBeatrice = loadImage("scenebackgroundbeatrice.png");
    sceneBackgroundLarry = loadImage("scenebackgroundlarry.png");
    sceneBackgroundStanley = loadImage("scenebackgroundstanley.png");
    
    playerWaitress = loadImage("playerwaitress.png");
    playerBusBoy = loadImage("playerbusboy.png");
    playerStanley = loadImage("playerstanley.png");
    
    wakeupScene[0] = loadImage("wakeupscene0.png");
    wakeupScene[1] = loadImage("wakeupscene1.png");
    wakeupScene[2] = loadImage("wakeupscene2.png");
    wakeupScene[3] = loadImage("wakeupscene3.png");
    for (int i = 0; i < 12; i++) {
        playerTalksToBeaScene[i] = loadImage("playertalkingtobea" + (i) + ".png");
    }
    for (int i = 0; i < 12; i++) {
        playerTalksToLarryScene[i] = loadImage("playertalkingtolarry" + (i) + ".png");
    }
    for (int i = 0; i < 12; i++) {
        playerTalksToStanScene[i] = loadImage("playertalkingtostan" + (i) + ".png");
    }
    for (int i = 0; i < 6; i++) {
        playerTalksToSelfScene[i] = loadImage("endscene" + (i) + ".png");
    }
}
void draw() {
    background(#3d3254);
  if(scene == 1) {
     
     //instructions scene
 
     fill(0);
     stroke(100);
     strokeWeight(30);
     //rect(xText, yText, wText, hText);
     fill(255);
     textSize(50);
     text(title, width/2, 100);
     fill(255);
     textSize(25);
     text(subTitle, width/2, 150);
     textSize(30);
     text(instructions, textX, textY + 50, textW, textH);
     
     
     //playbox
     fill(0);
     stroke(100);
     strokeWeight(2);
     rect(width/2 - 150, height/2 + 150, 300, 100);
     //ellipse(width/2, height/2 + 200, 300, 100);
     fill(255);
     text(play,width/2, height/2 + 200);
     
     
 
 } else if(scene == 2) {
   //wake up scene
   image(wakeupScene[currentWakeupScene], width / 2, height / 2);
   image(talkingChef, width / 2, height / 2);
   fill(0);
   textSize(50);
   float textX = boxX + 10;
   float textY = boxY + 10;
   text(wakeupSceneDialogue[wakeupSceneCurrentDialogueIndex], textX, textY, boxWidth - 20, boxHeight - 20);
   if (wakeupSceneCurrentDialogueIndex == wakeupSceneDialogue.length - 1 && sceneTransition) {
       scene = 3;
   }
 }else if (scene == 3) {
   fill(0);
   textSize(50);
   //waitress maze scene 
   player.resize(100, 100);
   image(player, playerX, playerY, playerSize, playerSize);
   playerWaitress.resize(150, 0);
   image(playerWaitress, width / 2 - 150, height / 2 - 50);
   obstacle(520, 680, 450, 30);
   obstacle(520, 190, 450, 30);
   image(sceneBackgroundBeatrice, width / 2, height / 2);
   
   xRecipe = width / 2 + 350;
   yRecipe = height / 2 - 350;
   
   image(recipe, xRecipe, yRecipe, recipeSize, recipeSize);
          
   if (playerInRect(width / 2 + 310, height / 2 - 400, 100, 100)) {
       scene = 5;
     }
   }else if (scene == 4) {
   
     //player talks to bea
     fill(0);
     textSize(50);
     float textX = boxX + 10;
     float textY = boxY + 10;
     image(playerTalksToBeaScene[currentBeaScene], width / 2, height / 2);
     text(playerTalksToBeaSceneDialogue[playerTalksToBeaCurrentDialogueIndex], textX, textY, boxWidth - 20, boxHeight - 20);
     if (playerTalksToBeaCurrentDialogueIndex == playerTalksToBeaSceneDialogue.length - 1 && sceneTransition) {
         scene = 3;
     }
 } else if (scene == 5) {
     //larry maze scene
     fill(0);
     textSize(50);
        
     image(sceneBackgroundLarry, width / 2, height / 2);
     image(player, playerX, playerY, playerSize, playerSize);
     playerBusBoy.resize(155, 0);
     image(playerBusBoy, width / 2 + 200, height / 2 + 15);
     obstacle(0, 120, 450, 30);//top left
     obstacle(0, 790, 450, 30);//bottom left
     xRecipe = width/2 + 350;
     yRecipe = height/2 + 330;
     image(recipe, xRecipe, yRecipe, recipeSize, recipeSize);
     if (playerInRect(width / 2 + 310, height / 2 + 300, 100, 100)) {
         scene = 7;
     }
 } else if (scene == 6) {
   //player talks to larry scene
     fill(0);
     textSize(50);
     float textX = boxX + 10;
     float textY = boxY + 10;
     image(playerTalksToLarryScene[currentLarryScene], width / 2, height / 2);
     text(playerTalksToLarrySceneDialogue[playerTalksToLarryCurrentDialogueIndex], textX, textY, boxWidth - 20, boxHeight - 20);
     if (playerTalksToLarryCurrentDialogueIndex == playerTalksToLarrySceneDialogue.length - 1 && sceneTransition) {
         scene = 5; 
     }
 } else if (scene == 7) {
   //stanley maze scene
     fill(0);
     textSize(50);
     image(sceneBackgroundStanley, width / 2, height / 2);
     playerStanley.resize(155, 0);
     image(playerStanley, width / 2 + 250, height / 2 + 10);
     obstacle(0, 120, 450, 30);//top left
     obstacle(0, 790, 450, 30);//bottom left
     image(player, playerX, playerY, playerSize, playerSize);
     xRecipe = width / 2 + 350;
     yRecipe = height / 2 - 350;
     image(recipe, xRecipe, yRecipe, recipeSize, recipeSize);
     if (playerInRect(width / 2 + 310, height / 2 - 400, 100, 100)) {
         scene = 9;
     }
 }else if (scene == 8){
     fill(0);
     textSize(50);
   //players talks to stanley scene
     float textX = boxX + 10;
     float textY = boxY + 10;
     image(playerTalksToStanScene[currentStanScene], width / 2, height / 2);
     text(playerTalksToStanSceneDialogue[playerTalksToStanCurrentDialogueIndex], textX, textY, boxWidth - 20, boxHeight - 20);
     if (playerTalksToStanCurrentDialogueIndex == playerTalksToStanSceneDialogue.length - 1 && sceneTransition) {
         scene = 7; 
     }
 }else if (scene == 9){
     //end scene
     fill(0);
     textSize(50);
     image(playerTalksToSelfScene[currentSelfScene], width / 2, height / 2);
     float textX = boxX + 10;
     float textY = boxY + 10;
     text(playerTalksToSelfSceneDialogue[playerTalksToSelfCurrentDialogueIndex], textX, textY, boxWidth - 20, boxHeight - 20);
     if (playerTalksToSelfCurrentDialogueIndex >= playerTalksToSelfSceneDialogue.length) {
            gameOver(); 
     }

 }
 fill(255);
 textSize(30);
 text("Lives: " + lives, 50, 30);
 playerCanWalk();
 if (lives <= 0) {
   gameOver();
  }
}
