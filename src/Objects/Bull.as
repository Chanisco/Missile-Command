package Objects 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Bull extends Sprite
	{
		private var bullseye:Sprite;
		private var onitsway:Ohw = new Ohw;
		public var onArray:Array = [];
		public var msArray:Array = [];
		public function Bull() 
		{
			bullseye = drawCrosshair();
			addChild(bullseye);
			addEventListener(Event.ENTER_FRAME, vision);
			addEventListener(MouseEvent.MOUSE_DOWN, Pow);
			
		}
		
		
		private function Pow(e:MouseEvent):void 
		{
			var O:Number = onArray.length;
			var P:Number = msArray.length
			onArray.push(new Ohw);
			addChild(onArray[onArray.length - 1]);
			onArray[O].x = mouseX;
			onArray[O].y = mouseY;
			
		}
		
		private function vision(e:Event):void 
		{
		
			bullseye.x = mouseX;
			bullseye.y = mouseY;
		}
		private function drawCrosshair():Sprite
		{
			var draw:Sprite = new Sprite;
			draw.graphics.lineStyle(2);
			draw.graphics.drawCircle(0, 0, 10);
			draw.graphics.drawCircle(0, 0, 20);
			draw.graphics.moveTo(-25, 0 );
			draw.graphics.lineTo(25, 0);
			draw.graphics.moveTo(0, -25);
			draw.graphics.lineTo(0, 25);
			return draw
		}	
		
	}

}