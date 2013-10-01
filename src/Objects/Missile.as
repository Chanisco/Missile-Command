package Objects 
{
	import flash.events.Event;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Missile extends Bullet
	{
		
		public function Missile() 
		{
			graphics.lineStyle(2, 0x000000);
			graphics.beginFill(0x00fff0);
			graphics.drawRect(0, 0, 10, 20);
			graphics.endFill();
			
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop(e:Event):void 
		{
			this.movement(20)
			
		}
		
	}

}