void setup(){
  size(800, 800);
  textMode(CENTER);
  imageMode(CENTER);
  rectMode(CORNER);
  
  sceneBackground = loadImage("scenebackground.png");
  
  player = loadImage("player.png");
  playerWaitress = loadImage("playerwaitress.png");
  
}

void draw() {
  background(#54514A); 
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
   }   
    else if(scene == 2){
 
      player.resize(100, 0);
      image(player, 750, 745);
      
      playerWaitress.resize(150, 0);
      image(playerWaitress, width/2 - 150, height/2 - 50);
      
      image(sceneBackground, width/2, height/2);
      
    }
      
}
