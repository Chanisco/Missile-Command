package Objects 
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Enemy extends Sprite
	{
		public static var rocketArray:Array = [];
		public function Enemy() 
		{
			addEventListener(Event.ENTER_FRAME, Shooting)
		}
		
		private function Shooting(e:Event):void 
		{
			if (Math.random() < 0.01 && Main.End == true) {
				var R:Number = rocketArray.length;
				rocketArray.push(new Rockets);
				rocketArray[R].x = Math.random() * 800;
				rocketArray[R].y = -300;
				addChild(rocketArray[rocketArray.length -1]);
				for (var i:int = R-1; i >= 0; i--) 
				{
					if (rocketArray[i].y > 600) {
						removeChild(rocketArray[i])
						rocketArray.splice(i,1);
					}
				}
				
			}
			
			
		}
		
	}

}