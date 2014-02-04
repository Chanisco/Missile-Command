package 
{
	import adobe.utils.CustomActions;
	import flash.display.Sprite;
	import flash.events.DRMCustomProperties;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.sampler.NewObjectSample;
	import flash.ui.Mouse;
	import flash.geom.Point;
	import Objects.Boom;
	import Objects.Bull;
	import Objects.Enemy;
	import Objects.Grandma;
	import Objects.Home;
	import Objects.Soundz;
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
		public static var score:Number = 0;
		public var granny:Grandma;
		public var music:Soundz = new Soundz;
		public var villain:Enemy = new Enemy;
		public var Bullseye:Bull = new Bull;
		public var turnHouseX:Number;
		public var turnHouseY:Number;
		public var mouse:Mouse;
		public var House:Home = new Home;
		public var Rocket:Missile = new Missile;
		public var missileArray:Array = [];
		public var cooldown:int = 10;
		public var boomArray:Array = [];
		public var mouseArray:Array = [];
		public var cityArray:Array = [
			new Tower(100, 500,0x00ff00),
			new Tower(250, 550,0x00ff00),
			new Tower(400, 500,0x00ff00),
			new Tower(550, 550,0x00ff00)
		]
		public var AmmoArray:Array = [
		]
		public var grannyArray:Array = [
		new Grandma(20),
		new Grandma(400),
		new Grandma(200)
		]
		
		public var Speed:int = 8;
		public function Main():void 
		{	
			House.x = 400;
			House.y = 570;
			
			addChild(Bullseye);
			addChild(villain);
			addChild(House);
			//addChild(music)
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			Mouse.hide();
			main = this;
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			stage.addEventListener(MouseEvent.MOUSE_DOWN, Deathpos);
			addEventListener(Event.ENTER_FRAME, Mainloop);
			
			stage.addEventListener(MouseEvent.MOUSE_DOWN, aim);
			
			
			
			var l:int = cityArray.length;
			for (var i:int = 0; i < l ; i++) {
				addChild(cityArray[i])
				}
			var q:int = grannyArray.length 
			for (var m:int = 0; m < q ; m++) {
				addChild(grannyArray[m])
				}
				
			var z:int = AmmoArray.length;
			for (var j:int = 0; j < z ; j++) {
				addChild(AmmoArray[j])
				}
		}
		
		private function Deathpos(e:MouseEvent):void 
		{
			var P:Number = mouseArray.length;
			mouseArray.push(new Point(mouseX,mouseY));
			
		}
		
		private function Mainloop(e:Event):void 
		{
			House.HouseMovement();
			var R:Number = missileArray.length;
			var newBoom : Boom;
			for (var i:int = R-1; i >= 0; i--) 
				{
				
					var YposMou:int = new int(mouseArray[i].y);
					var YposMis:int = new int(missileArray[i].y);
					
					if (mouseArray[i].y > missileArray[i].y) {
						newBoom	=	new Boom();
						boomArray.push(newBoom);
						//trace(i + "de X is" + mouseArray[i].x +" en de Y is" + mouseArray[i].y)
						newBoom.x = mouseArray[i].x;
						newBoom.y = mouseArray[i].y;
						removeChild(missileArray[i])
						addChild(newBoom);
						missileArray.splice(i, 1);
						mouseArray.splice(i, 1);
						
					}	
				}
			
		}
		
		private function aim(e:MouseEvent):void 
		{
			var R:Number = missileArray.length;
			var pick:Point = new Point(mouseX, mouseY);
			Rocket.followTarget(pick);
			missileArray.push(new Missile);
			var Xpos:int = new int(mouseX);
			var Ypos:int = new int(mouseY);
			var Pos:Point = new Point(Xpos, Ypos);
			missileArray[R].x = House.x;
			missileArray[R].y = House.y;
			missileArray[R].followTarget(Pos);
			addChild(missileArray[missileArray.length - 1]);
			missileArray[R].movement;
			var l : int = Enemy.rocketArray.length;
			var m : int;
			for (var i : int = l-1; i >=0; i--)
			{
				m = boomArray.length;
				for (var j : int = m-1; j >= 0; j--) {
						
					if(Enemy.rocketArray[i].hitTestObject(boomArray[j]))
					{
						score++;
						trace("Score is =" + score)
						villain.removeChild(Enemy.rocketArray[i])
						Enemy.rocketArray.splice(i, 1);
						boomArray.splice(i, 1);
					}
						
				} 
             }

		}
		
	}
	
}