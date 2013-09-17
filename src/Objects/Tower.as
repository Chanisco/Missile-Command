package Objects 
{
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Tower extends Sprite
	{
		private var color:uint = 0x00ff00;
		private var xp : Number;
		private var yp : Number;
		private var damage: Number;
		public function Tower(xp:Number,yp:Number,color:uint) 
		{
			this.xp = xp;
			this.yp = yp;
			this.color = color;
			make();
		}
		public function make():void {
			graphics.clear();
			graphics.lineStyle(1, 0x000000);
			graphics.beginFill(color);
			graphics.drawRect(xp, yp, 50, 10);
			graphics.endFill();
			
		}
		public function towerdamage():void 
		{
			if (damage > 1) {
				color = 0xff0000
			}
			make();
		}
		
		
	}

}