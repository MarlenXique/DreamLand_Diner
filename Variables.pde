//import gifAnimation.*;
//Gif playerTransition;
//import ddf.minim.*;

//Minim minim;
//AudioPlayer collisionSound;

PImage player;
PImage playerWaitress;
PImage playerBusBoy;
PImage playerStanley;
PImage sceneBackgroundBeatrice;
PImage sceneBackgroundStanley;
PImage sceneBackgroundLarry;
PImage talkingChef;
PImage recipe;

int scene = 1;
int lives = 5;

boolean sceneTransition = false;
boolean movingUp = false;
boolean movingDown = false;
boolean movingLeft = false;
boolean movingRight = false;

String title = "Dreamland Diner";
String instructions = "You start dreaming that you're in a ghoulish version of your place at work, Your Diner! Naturally, you start wondering what happened and why you're here. Ask your co-workers as they have stories to tell and will give you a recipe. Collect all 3 recipes to wake up. But be careful as bumping into objects will cost you 1 life out of  " + lives;
String subTitle = "Made by: Marlen Xique";
String play = "Click here to play";

float playerX = 800;
float playerY = 790;
float playerSize = 100;
float playerSpeed = 5;

float boxX = 20;
float boxY = 600;
float boxWidth = 810;
float boxHeight = 235;
float textX = width/2 + 75;
float textY = height/2;
float textW = 600;
float textH= 500;
float xRecipe;
float yRecipe;
float recipeSize = 50;

//chef talks in the beginning 
PImage[] wakeupScene = new PImage[4];
int currentWakeupScene = 0;
String[] wakeupSceneDialogue = {
    "eergh...ugh...*Yawn* Where am I? What's going on? I thought I was sleeping on my bed.",
    "Wait is this my Diner? Wh….Why does it look so beat down? Is anyone inside? I hope so.",
    "Umm, I think I see someone inside…is that my waitress? I think it is…Beatrice.",
    "I hope she helps me figure stuff out..hopefully she doesn't lose her temper again.",
    "I'll need to walk up to her..."
};
int wakeupSceneCurrentDialogueIndex = 0;

//player talks to bea
PImage[] playerTalksToBeaScene = new PImage[12];
int currentBeaScene = 0;
String[] playerTalksToBeaSceneDialogue = {
    "Hey! Beatrice, what's going on? Why does my Diner look..deserted",
    "Hey Chef! Well, don't you remember? Your diner started running out of business",
    "What!?? Are you joking? My Diner is doing great! What are you talking about?",
    "Chef…You lost all your recipes and because of that all the customers started hating the food",
    "So now it's my fault!? Everything bad that happened..happened because of me?",
    "I wasn't saying that! Funny though, You said the exact same thing that time that you…",
    "Bumped into me with a tray full of apple pies, and I was humiliated in front of all those customers",
    "…..I did? Well maybe you weren't watching where you were going",
    "I was! But you were talking to a Co-Chef Stanley and didn't see me",
    "Oh..I see, So it really was my fault huh? I'm so sorry about that. I can get defensive",
    "Don't sweat it hon! I'll give you my apple pie recipe, And I promise it's super yummy!",
    "Thank you so much, Bea, I'll grab the recipe myself ",
};
int playerTalksToBeaCurrentDialogueIndex = 0;

//talks to larry scene
PImage[] playerTalksToLarryScene = new PImage[12];
int currentLarryScene = 0;
String[] playerTalksToLarrySceneDialogue = {
    "Larry! Are you stuck here too? Did you know this place ran out of business?",
    "Hey Chef, Yes of course I knew. Everyone here knows that the Diner is losing customers",
    "I have to go to find some more recipes so that I can re-open…I can't just give up on my Diner",
    "Oh! That's cool, I would help...But these dishes aren't going to clean themselves..",
    "Dishes? Why are you washing dishes? There aren't any customers in right now. How'd they get dirty?",
    "You're one to ask. You spilled a large pot of chili down the sink! It made everything greasy!!",
    "Oooh..Right Stanley was being a pain about the seasoning in the chili, so I got upset and 'threw it out'",
    "Well after you threw it out, I was forced to slow down because it clogged the sink",
    "And then both you and Stanley yelled at me because the sink was dirty and full",
    "I didn't know I caused so many problems here..I'm so sorry, I promise to make things better. I will act better",
    "An apology is more than anyone could ask for... also I can help! Here's my family's chili recipe, less greasy ",
    "HaHa! Thank you for understanding, and I'll get the recipe myself",
};
int playerTalksToLarryCurrentDialogueIndex = 0;

//talks to Stan scene
PImage[] playerTalksToStanScene = new PImage[12];
int currentStanScene = 0;
String[] playerTalksToStanSceneDialogue = {
    "Stanley!, Boy am I relieved to see you! How are you?",
    "You seem chipper than usual, I am fine..I guess",
    "Fine? My diner is running out of business and you're fine?",
    "There you go again..'Your Diner' Chef we worked on this together!",
    "You're right, We did. Stanley, do you think I don't value our partnership?",
    "You sure seem to forget about partnerships when giving credit",
    "I understand…Listen Stanely I'm not sure why I'm here but I guess it's because I need to realize…",
    "The Harm I've caused here. I know I need to do better. And I promise to give you credit where it's due",
    "Alright I'll hold you to it. And hey, Remember the first dish we worked on together?",
    "The spaghetti recipe! Of course! How could I forget?",
    "Will, I kept a copy over there, it's yours..err ours...let's get cooking ",
    "Thanks, Stan, it's time we brought it back to the menu..together ",
};
int playerTalksToStanCurrentDialogueIndex = 0;

//end scene
//talks to Self scene
PImage[] playerTalksToSelfScene = new PImage[6];
int currentSelfScene = 0;
String[] playerTalksToSelfSceneDialogue = {
    "",
    "",
    "What a dream…losing the Diner and my employee's respect. I can't believe I let things…",
    "Spiral out of control like that. I need to go to the Diner right now and apologize to all of them",
    "I'll make sure to help out and prevent our Diner from closing down…It's time to start from scratch ",
    "",
   };
int playerTalksToSelfCurrentDialogueIndex = 0;
