package Objects 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Home extends Sprite
	{
		private var cannon:Cannon = new Cannon;
		public function Home() 
		{
			addChild(cannon)
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