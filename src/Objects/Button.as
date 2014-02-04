package Objects 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Button extends Sprite
	{
		private var btn:Sprite = new Sprite;
		public function Button($color:uint) 
		{
			btn.graphics.lineStyle(1, 0x000000);
			btn.graphics.beginFill($color);
			btn.graphics.drawRect(0, 0, 100, 50);
			btn.graphics.endFill();
			addChild(btn)
		}
		
	}

}