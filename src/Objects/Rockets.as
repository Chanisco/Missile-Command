package Objects 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Rockets extends Bullet
	{
		
		public function Rockets() 
		{
			graphics.lineStyle(2, 0x000000);
			graphics.beginFill(0xffff00);
			graphics.drawRect(0, 0, 10, 20);
			graphics.endFill();
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop(e:Event):void 
		{
			this.movement(20);
			//this.followTarget(new Point(mouseX, mouseY));
		}
		
	}

}