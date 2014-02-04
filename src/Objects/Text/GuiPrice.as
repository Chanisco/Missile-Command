package Objects.Text 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class GuiPrice extends Sprite
	{
		public var money:Number;
		
		private var box:TextField;
		private var format:TextFormat;
		
		[Embed(source="BOMBARD_.ttf", fontFamily = 'foo', embedAsCFF = 'false')]
		private var bar:String;
		public function GuiPrice() 
		{
			
			format = new TextFormat();
			format.color = 0x00ff00;
			format.size = 30;
			format.align = "center";
			format.font = "foo" 
			
			box = new TextField();
			box.borderColor = 0xffffff;
			box.border = true;
			box.defaultTextFormat = format;
			box.embedFonts = true;
			box.selectable = 	false;
			box.width = 		300;
			box.height =		100;
			addChild(box);
			addEventListener(Event.ENTER_FRAME, Priceloop);
		}
		
		private function Priceloop(e:Event):void 
		{
			money = Main.score;
			box.text = 		new String("Money :" + money);
		}
		
	}

}