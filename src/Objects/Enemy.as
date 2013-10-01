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
		public var rocketArray:Array = [];
		public function Enemy() 
		{
			addEventListener(Event.ENTER_FRAME, Shooting)
		}
		
		private function Shooting(e:Event):void 
		{
			if (Math.random() < 0.2 && Main.End == true) {
				var R:Number = rocketArray.length;
				rocketArray.push(new Rockets);
				rocketArray[R].x = Math.random() * 1300;
				rocketArray[R].y = -300;
				addChild(rocketArray[rocketArray.length -1]);
				for (var i:int = R-1; i >= 0; i--) 
				{
					if (rocketArray[i].y < -100) {
						removeChild(rocketArray[i])
						rocketArray.splice(i,1);
					
					}
				}
				
			}
			
			
		}
		
	}

}