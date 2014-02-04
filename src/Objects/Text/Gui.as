package Objects.Text 
{
	import flash.display.Sprite;
	import flash.events.TextEvent;
	import Objects.Text.GuiPrice;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Gui extends Sprite
	{

		public var moneyCheck:GuiPrice = new GuiPrice
		public function Gui() 
		{
			addChild(moneyCheck)
		}
		
	}

}