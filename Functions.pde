boolean mouseInRect(float x, float y, float w, float h) {
  //rect( x,  y,  w, h);
    return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
}
boolean playerInRect(float inRectX, float inRectY, float inRectW, float inRectH) {
    //rect( inRectX,  inRectY,  inRectW, inRectH);
  return playerX > inRectX && playerX < inRectX + inRectW && playerY > inRectY && playerY < inRectY + inRectH;
}

void obstacle(float obstacleX, float obstacleY, float obstacleWidth, float obstacleHeight) {
 
  //rect(obstacleX, obstacleY, obstacleWidth, obstacleHeight); 
  
  if (playerX + playerSize > obstacleX &&
      playerX < obstacleX + obstacleWidth &&
      playerY + playerSize > obstacleY &&
      playerY < obstacleY + obstacleHeight) {
    lives--;
    //collisionSound.rewind(); // Rewind the sound to the beginning
    //collisionSound.play();
    if (lives < 0) {
      lives = 0; 
    }
    if(scene == 3){
      playerX = 800;
      playerY = 790;
    }
    if(scene == 5){
      playerX = width / 2 + 310;
      playerY = height / 2 - 350;
    }
    if(scene == 7){
      playerX = 800;
      playerY = 7;
    }
    
  }
}

void keyPressed() {
  if (keyCode == UP || key == 'W' || key == 'w') {
    movingUp = true;
  } else if (keyCode == DOWN || key == 'S' || key == 's') {
    movingDown = true;
  } else if (keyCode == LEFT || key == 'A' || key == 'a') {
    movingLeft = true;
  } else if (keyCode == RIGHT || key == 'D' || key == 'd') {
    movingRight = true;
  }
}

void keyReleased() {
  if (keyCode == UP || key == 'W' || key == 'w') {
    movingUp = false;
  } else if (keyCode == DOWN || key == 'S' || key == 's') {
    movingDown = false;
  } else if (keyCode == LEFT || key == 'A' || key == 'a') {
    movingLeft = false;
  } else if (keyCode == RIGHT || key == 'D' || key == 'd') {
    movingRight = false;
  }
}

void playerCanWalk() {
  if (movingUp) {
    playerY -= playerSpeed;
  }
  if (movingDown) {
    playerY += playerSpeed;
  }
  if (movingLeft) {
    playerX -= playerSpeed;
  }
  if (movingRight) {
    playerX += playerSpeed;
  }
}

void gameOver() {
  // Reset player position and lives
  playerX = 800;
  playerY = 790;
  currentWakeupScene = 0;
  wakeupSceneCurrentDialogueIndex = 0;
  currentBeaScene = 0;
  playerTalksToBeaCurrentDialogueIndex = 0;
  currentLarryScene = 0;
  playerTalksToLarryCurrentDialogueIndex = 0;
  currentStanScene = 0;
  playerTalksToStanCurrentDialogueIndex = 0;
  currentSelfScene = 0;
  playerTalksToSelfCurrentDialogueIndex = 0;
  scene = 1;
  lives = 3;
}
//void stop() {
//    collisionSound.close();
//    minim.stop();
//    super.stop();
//}

void mousePressed() {
    if (scene == 1) {
      if (mouseInRect(width/2 - 150, height/2 + 150, 300, 100)) {
        scene = 2;
      }
    }
    if (scene == 3 && playerInRect(0, height / 2 - 125, 500, 200) 
    && mouseInRect(width / 2 - 200, height / 2 - 125, 100, 100)) {
      scene = 4;
    }
    if (scene == 5 && playerInRect(350, height / 2 - 70, 500, 200)
    && mouseInRect(width / 2 + 150, height / 2 - 70, 100, 150)) {
      scene = 6;
    }
    if (scene == 7 && playerInRect(350, height / 2 - 70, 500, 200)
    && mouseInRect(width / 2 + 200, height / 2 - 70, 100, 150)) {
      scene = 8;
    }
    if (scene == 2 && wakeupSceneCurrentDialogueIndex < wakeupSceneDialogue.length - 1) {
        wakeupSceneCurrentDialogueIndex++;
    } else if (scene == 2 && wakeupSceneCurrentDialogueIndex == wakeupSceneDialogue.length - 1) {
        sceneTransition = true;
    }
    if (scene == 2) {
        currentWakeupScene = (currentWakeupScene + 1) % wakeupScene.length;
    }
    if (scene == 4 && playerTalksToBeaCurrentDialogueIndex < playerTalksToBeaSceneDialogue.length - 1) {
        playerTalksToBeaCurrentDialogueIndex++;
    } else if (scene == 4 && playerTalksToBeaCurrentDialogueIndex == playerTalksToBeaSceneDialogue.length - 1) {
        sceneTransition = true;
    }
    if (scene == 4) {
        currentBeaScene = (currentBeaScene + 1) % playerTalksToBeaScene.length;
    }
    if (scene == 6 && playerTalksToLarryCurrentDialogueIndex < playerTalksToLarrySceneDialogue.length - 1) {
        playerTalksToLarryCurrentDialogueIndex++;
    } else if (scene == 6 && playerTalksToLarryCurrentDialogueIndex == playerTalksToLarrySceneDialogue.length - 1) {
        sceneTransition = true;
    }
    if (scene == 6) {
        currentLarryScene = (currentLarryScene + 1) % playerTalksToLarryScene.length;
    }
    if (scene == 8 && playerTalksToStanCurrentDialogueIndex < playerTalksToStanSceneDialogue.length - 1) {
        playerTalksToStanCurrentDialogueIndex++;
    } else if (scene == 8 && playerTalksToStanCurrentDialogueIndex == playerTalksToStanSceneDialogue.length - 1) {
        sceneTransition = true;
    }
    if (scene == 8) {
        currentStanScene = (currentStanScene + 1) % playerTalksToStanScene.length;
    } if (scene == 9) {
        // Check if there are more dialogues and images to display
        if (playerTalksToSelfCurrentDialogueIndex < playerTalksToSelfSceneDialogue.length - 1) {
            // Increment the dialogue index to display the next dialogue
            playerTalksToSelfCurrentDialogueIndex++;
            // Increment the image index to display the next image
            currentSelfScene++;
        } else {
            // If there are no more dialogues or images, trigger the gameOver function
            gameOver();
          }
        }
      }
