PImage player;
PImage playerWaitress;
PImage playerBusBoy;
PImage playerStanley;
PImage sceneBackgroundBeatrice;
PImage sceneBackgroundStanley;
PImage sceneBackgroundLarry;
PImage talkingChef;

int scene = 1;
int lives = 3;

boolean gameOver = false;
boolean sceneTransition = false;
boolean movingUp = false;
boolean movingDown = false;
boolean movingLeft = false;
boolean movingRight = false;

String title= "Dreamland Diner";
String start = "how to play";
String gameOverText = "Game Over";

float playerX = 800; 
float playerY = 790;
float playerSize = 100;
float playerSpeed = 5;


//chef talks in the beginning 
PImage[] wakeupScene = new PImage[4];
int currentWakeupScene = 0;
String[] wakeupSceneDialogue = {"huh, why am i at work? and why does it look ruined", 
"what is going on? last thing i remebered i was trying to sleep", 
"i wonder if anyone is in right now, i hope so...wait", 
"i think i see some in the dining area, is that beatrice?", 
"i hope she can help, hopefully she doesnt lose her temper again...like last time"};
int wakeupSceneCurrentDialogueIndex = 0; // Index of the current dialogue line

//player and bea 
PImage[] playerTalkingToBea;
PImage[] beaTalking;
String[] playerToBeaDialogue = {"Hey Bea, what's going on? What does my Restuarant look deserted?",
"What! of course it didnt! My restaurant is doing great in busniess!",
"It's not my fault, I have horrible memory...what about the co-chef? cant he help?"};
//,
//"So no im expected to do everything around here?",
//"I remember that...you werenet watching where you were going",
//"hm...So is everything my fault now?"
String[] beaDialogue = {"Hey, well dont you remember? The place starting running out of business",
"I dont know if youre joking or not..but remember when you lost your recipes?the food started tasting horrible and evryone stopped eating here", 
"Not after that fight ya'll had..he wants nothing to do with you. He's probably in the kitchen right now cooking his last meal"};
int dialogueIndex = 0; // Index to track current dialogue line

//"Funny you say that...that's the thing you told me when you crashed into me...when i was carrying a tray full of apple pies.",
//"Chef...I was watching where i was going...but you were talking to a customer when you bumped into me"};
