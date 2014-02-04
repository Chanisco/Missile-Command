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
		public var size : Number;
		public var explosion:Sprite = new Sprite
		public function Boom() 
		{
	
			size = 20;
			explosion.graphics.beginFill(0x00000f)
			explosion.graphics.drawCircle(0, 0, 30)
			addChild(explosion)
			addEventListener(Event.ENTER_FRAME, Explosion);
		}
		
		private function Explosion(e:Event):void 
		{
			if(size < 30){
				explosion.graphics.clear();
				explosion.graphics.beginFill(0x00000f)
				explosion.graphics.drawCircle(0, 0, size)
				explosion.graphics.endFill();
				size++;
			}
			if (size >= 30) {
				explosion.alpha -= 0.01;
				if (explosion.alpha < 0.2) {
					removeChild(explosion);
					removeEventListener(Event.ENTER_FRAME, Explosion);
				}
			}
			
		}
		
	}

}