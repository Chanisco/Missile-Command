package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.display.StageDisplayState;
	import Objects.Text.Gui;
	import Objects.Button;
	
	/**
	 * ...
	 * @author Chanisco
	 */
	public class StartMenu extends Sprite
	{
		private var start:StartBtn = new StartBtn;
		private var highscore:HighBtn = new HighBtn;
		private var game:Main = new Main;
		private var gui:Gui = new Gui();
		private var background:Back = new Back();
		private var full:FullBtn = new FullBtn;
		public function StartMenu()
		{
			addChild(background)
			full.x = 700;
			addChild(full);
			
			start.x = 200;
			start.y = 100;
			addChild(start);
			
			highscore.x = 400;
			highscore.y = 100;
			addChild(highscore);
			
			
			start.addEventListener(MouseEvent.CLICK, Startgame);
			highscore.addEventListener(MouseEvent.MOUSE_OVER, Instructions);
			full.addEventListener(MouseEvent.CLICK, FullScreen);
		}
		
		private function FullScreen(e:MouseEvent):void 
		{
			stage.displayState=StageDisplayState.FULL_SCREEN;
		}
		
		private function Instructions(e:MouseEvent):void 
		{
			highscore.x = Math.round(Math.random() * 700)
			highscore.y = Math.round(Math.random() * 500)
		}
		
		private function Startgame(e:MouseEvent):void
		{
			addChild(game);
			addChild(gui);
			if (contains(start))
			{
				removeChild(start);
				removeChild(highscore);
				removeChild(full);
				
			}
		}
	
	}

}