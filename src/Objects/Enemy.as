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
		public function Enemy() 
		{
			addEventListener(Event.ENTER_FRAME, Shooting)
		}
		
		private function Shooting(e:Event):void 
		{
			if (Math.random() < 0.2 && Main.End == true) {
				var Rocket:Rockets = new Rockets;
				Rocket.x = Math.random() * 1300;
				Rocket.y = -300;
				addChild(Rocket);
				Rocket.addEventListener(Event.ENTER_FRAME, walk);
			}
		}
		
		private function walk(e:Event):void 
		{
			var target:Sprite = Sprite(e.target);
			target.y += 2;
			if (target.y > 500) {
				
				if(Main.main.contains(this)){
					Main.main.removeChild(this);
					removeEventListener(Event.ENTER_FRAME, walk);
				}
				//removeChild(this)
			}
		}
		
		
	}

}