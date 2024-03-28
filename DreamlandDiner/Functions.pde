boolean mouseInRect(float x, float y, float w, float h) {
  return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
}

boolean playerInRect(float inRectX, float inRectY, float inRectW, float inRectH) {
  return playerX > inRectX && playerX < inRectX + inRectW && playerY > inRectY && playerY < inRectY + inRectH;
}

 void Overlap(){
   //if player overlaps with given rect
     lives = lives - 1 ; 
      
      if (lives == 0){
        fill(#82e729);
        stroke(#0d803e);
        strokeWeight(10);
        rect(width/2 - 180, 50, 300, 100);
        
        textSize(30);
        fill(255);
        text(gameOverText, width/2 - 170, 50, 300, 300);
        noLoop();
        gameOver = true;  
       }
 }
    
    void gameOverLoop(){
      if(gameOver == true){
        lives = 3;
        gameOver = false;
        loop();     
    }
   }

 void playerCanWalk(){
      if (keyPressed) {
      if (key == 'a' || key == 'A') {
        playerX -= playerSpeed;
      } else if (key == 'd' || key == 'D') {
        playerX += playerSpeed;
      } else if (key == 'w' || key == 'W') {
        playerY -= playerSpeed;
      } else if (key == 's' || key == 'S') {
        playerY += playerSpeed;
    }
  }
}
     
void mousePressed() {
  if(scene == 1){
  if (mouseInRect(width/2 - 200, height/2 + 200, 400, 100)) {
    scene = 3;
    print("Mouse pressed to go to scene 2 at ");

    }
  }
}
