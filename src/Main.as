package 
{
	import flash.display.Sprite;
	import flash.events.DRMCustomProperties;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.ui.Mouse;
	import flash.geom.Point;
	import Objects.Bull;
	import Objects.Enemy;
	import Objects.Home;
	import Objects.Tower;
	import Objects.Missile;
	
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Main extends Sprite 
	{
		public static var End:Boolean = true;
		public static var main:Main;
		
		public var villain:Enemy = new Enemy;
		public var Bullseye:Bull = new Bull;
		public var turnHouseX:Number;
		public var turnHouseY:Number;
		public var mouse:Mouse;
		public var House:Home = new Home;
		public var Rocket:Missile = new Missile;
		public var missileArray:Array = [];
		public var cooldown:int = 10;
		public var cityArray:Array = [
			new Tower(100, 500,0x00ff00),
			new Tower(250, 550,0x00ff00),
			new Tower(400, 500,0x00ff00),
			new Tower(550, 550,0x00ff00)
		]
		
		public var Speed:int = 8;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			
			main = this;
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			addEventListener(Event.ENTER_FRAME, Mainloop);
			stage.addEventListener(MouseEvent.MOUSE_DOWN, aim);
			House.x = 400;
			House.y = 480;
			Mouse.hide();
			addChild(Bullseye);
			addChild(villain);
			addChild(House);
			var l:int = cityArray.length;
			for (var i:int = 0; i < l ; i++) {
				addChild(cityArray[i])
				}
			
			
			// entry point
		}
		
		private function Mainloop(e:Event):void 
		{
		
			House.HouseMovement();
			var R:Number = missileArray.length;
			var Xpos:int = new int(stage.mouseX);
			var Ypos:int = new int(stage.mouseY);
			trace("Xposition: ", Xpos);
			trace("Yposition: ", Ypos);
			for (var i:int = R-1; i >= 0; i--) 
				{
					if (missileArray[i].x == Xpos && missileArray[i].y == Ypos) {
						trace("i'm there boss")
					}
				}
			
		}
		
		private function aim(e:MouseEvent):void 
		{
			var R:Number = missileArray.length;
			
			Rocket.followTarget(new Point(mouseX, mouseY));
			missileArray.push(new Missile);
			var Xpos:int = new int(mouseX);
			var Ypos:int = new int(mouseY);
			var Pos:Point = new Point(Xpos, Ypos);
			missileArray[R].x = House.x;
			missileArray[R].y = House.y;
			missileArray[R].followTarget(Pos);
			addChild(missileArray[missileArray.length - 1]);
			
			missileArray[R].movement;
			
		}
		
		private function fly(e:Event):void 
		{
		
		
		}

		
	}
	
}