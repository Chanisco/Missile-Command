package Objects 
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Boom extends Sprite
	{
		private var xp : Number;
		private var yp : Number;
		private var size : Number;
		public var kaBoom:Sprite = new Sprite
		public function Boom() 
		{
			this.xp = xp;
			this.yp = yp;
			this.size = size;
			yp = 200;
			xp = 200;
			size = 20;
			graphics.beginFill(0x00000f)
			graphics.drawCircle(xp, yp, size)
			stage.addEventListener(Event.ENTER_FRAME, explosion);
		}
		
		private function explosion(e:Event):void 
		{
			if(size < 60){
				graphics.clear();
				graphics.beginFill(0x00000f)
				graphics.drawCircle(xp, yp, size)
				graphics.endFill();
				size++;
			}
			
		}
		
	}

}