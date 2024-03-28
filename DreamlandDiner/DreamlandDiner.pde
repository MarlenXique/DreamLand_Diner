void setup(){
  size(850, 850);
  textMode(CENTER);
  imageMode(CENTER);
  rectMode(CORNER);
  
  scene1Top = loadImage("scene1top.png");
  scene3Stove = loadImage("scene3stove.png");
  sceneBackgroundWaitress = loadImage("scenebackgroundwaitress.png");
  sceneFinalStove = loadImage("scenefinalstove.png");
  
  player = loadImage("player.png");
  playerWaitress = loadImage("playerwaitress.png");
  playerBusBoy = loadImage("playerbusboy.png");
  playerChef = loadImage("playerchef.png");
  
  //playerStartXScene3 = 800;
  //playerStartYScene3= 800;
  //playerStartXScene4 = width/2 - 380;
  //playerStartYScene4 = height/2 - 380;
  
}

void draw() {
  background(#3d3254);
 
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
   //visual novel scene
   } 
    else if(scene == 3){
      
      //playerX = playerStartXScene3;
      //playerY = playerStartYScene3;

      //player.resize(100, 0);
      image(player, playerX, playerY,playerSize,playerSize);
      
      playerWaitress.resize(150, 0);
      image(playerWaitress, width/2 - 150, height/2 - 50);
      
      image(scene1Top, width/2 + 30, height/2 - 50);
      image(scene1Top, width/2 + 30, height/2 + 400);
            
      //rect(width/2 + 20, height/2 + 185, 390, 100);

      image(sceneBackgroundWaitress, width/2 - 30, height/2 -10);
      
      //rect(width/2 + 310, height/2 - 400, 100, 100);
      if (playerInRect(width/2 + 310, height/2 - 400, 100, 100)) {
        scene = 4;
      }     
   }
   else if(scene == 4 ){
     
     image(player, playerX, playerY,playerSize,playerSize);
     image(scene3Stove, width/2, height/2);
     playerBusBoy.resize(155, 0);
     image(playerBusBoy, width/2 + 200, height/2 + 15);
     //rect(width/2 + 310, height/2 + 310, 100, 100);
      if (playerInRect(width/2 + 310, height/2 + 310, 100, 100)) {
        scene = 5;
      }
   }
   else if(scene == 5){
     image(player, playerX, playerY,playerSize,playerSize);
     image(sceneFinalStove, width/2, height/2);
     playerChef.resize(155,0);
     image(playerChef, width/2 + 250, height/2 + 10);
     
     
   }
    playerCanWalk();
}
