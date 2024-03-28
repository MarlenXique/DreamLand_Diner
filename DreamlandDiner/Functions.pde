boolean mouseInRect(float x, float y, float w, float h) {
  return mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h;
}

boolean playerInRect(float x, float y, float w, float h) {
  return playerX > x && playerX < x + w && playerY > y && playerY < y + h;
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
