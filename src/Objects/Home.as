package Objects 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Home extends Sprite
	{
		
		public function Home() 
		{
			graphics.lineStyle(1, 0x000000);
			graphics.moveTo(0, -10);
			graphics.lineTo(30, 0);
			graphics.lineTo(0, 10);
			graphics.lineTo(0, -10);
		}
		
		public function HouseMovement():void 
		{
			var mc:Sprite = this;
			var angleRadian:Number = Math.atan2( stage.mouseY - mc.y,stage.mouseX - mc.x )
			var angleDegree:Number = angleRadian * 180 / Math.PI;
			this.rotation = angleDegree;
		}
		
	}

}