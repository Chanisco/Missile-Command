package Objects 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import Objects.Bull;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Ohw extends Sprite
	{
		public var lasting:int = 30;
		public var done:Boolean = false;
		public function Ohw() 
		{
			graphics.lineStyle(2);
			graphics.beginFill(0x0000ff, 1);
			graphics.drawCircle(0, 0, lasting);
			graphics.endFill();
			addEventListener(Event.ENTER_FRAME, last);
		}
		
		public function last(e:Event):void 
		{
			graphics.clear();
			graphics.lineStyle(2);
			graphics.beginFill(0x0000ff, 0.2);
			graphics.drawCircle(0, 0, lasting);
			graphics.endFill();
			if (lasting < 100 && done == false) {
				lasting--;
			}
			if (lasting == 0) {
				done = true;
				graphics.clear();
			}
		}
		
		
		
		
	}

}