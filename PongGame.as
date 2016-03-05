/*
Coded By : Anass El Akkaoui

Square Developpers

Copyright © 2016

Our Facebook Page : https://www.facebook.com/SquareDev

My Facebook Page : https://www.facebook.com/profile.php?id=100008611865689

Our github : https://github.com/SquareDeveloppers
*/
package  {
	import flash.display.MovieClip;
	
	public class Game1 extends MovieClip {

		public function Game1() {
			// Nothing Here
		}
		
    public function Init():void{
		gotoAndStop(11);
		//trace("works");
	}
	public function GameStart(ball:MovieClip,cpuspeed:int,ballspeedx:int,ballspeedy:int)
	{
		//The Game Enterframe listner
		stage.addEventListener(Event.ENTER_FRAME, GameFrame);
   function GameFrame(event:Event):void
   {
	 //set player1 to follow the mouse
	p1.y = mouseY;
	// if the ball touch the wall(the width) of the stage then change his direction to contrary dir.
	if(ball.x >= (626 - (ball.width/2)) || ball.x <= 0) {
     ballspeedx = -ballspeedx;
   }
 
     ball.x = ball.x + ballspeedx;
	 //here the same
	if(ball.y >= (500 - (ball.height/2)) || ball.y <= 0) {
     ballspeedy = -ballspeedy;
    }
 
    ball.y = ball.y + ballspeedy;
	//animate the cpu player movements which he follow the ball.
    if(cpu.y < ball.y - 40){
    cpu.y += cpuspeed;
    }
    else if(cpu.y > ball.y + 40){
    cpu.y -= cpuspeed;
    }
	//check if the ball touche the cpu
    if(ball.hitTestObject(cpu))
    {
	ballspeedx = -ballspeedx;
    }
	//check if the ball touche the player1 
    if(ball.hitTestObject(p1))
    {
	ballspeedx = -ballspeedx;
    }
	//if the ball is on the side of cpu then add to me 5 points
    if(ball.x >= 610)
    {
	yourscore += 5;
	myscore.text = "Score : " + yourscore;
    }
	// if the ball is on my side add to him 5 points
    if(ball.x <= 4)
    {
	cpuscoree += 5;
	cpuscore.text = "Score : " + cpuscoree;
    }
	//changing level difficulty.
    if(yourscore == 10)
     {
    cpuspeed = 5;
     }
    if(yourscore ==  20)
    {
   cpuspeed = 6;
   ballspeedx = 10;
   ballspeedy = 10;
   }
   if(yourscore == 30)
   {
   cpuspeed = 9;
   ballspeedx = 15;
   ballspeedy = 15;
   }
   }
   }
   }
   }
