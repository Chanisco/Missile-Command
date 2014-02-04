package Objects 
{
	import flash.display.MovieClip;
	import flash.events.Event;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Grandma extends MovieClip
	{
		public var links:Boolean;
		public var rechts:Boolean;
		public var grandma:grandmaA = new grandmaA;
		public function Grandma($xp:int) 
		{
			grandma.x = $xp;
			grandma.y = 600 - grandma.height;
			addChild(grandma)
			grandma.addEventListener(Event.ENTER_FRAME, walking);
		}
		
		private function walking(e:Event):void 
		{
			//trace(links + " en rechts is" + rechts)
			if (grandma.x == 0 ) { 
				links = true; 
				rechts = false;
			}
			if (grandma.x == 780 ) { 
				links = false; 
				rechts = true;
			}
			if (links == true && rechts == false) { 
				grandma.x += 2;
			}
			if (links == false && rechts == true) { 
				grandma.x -= 2;
			}
			if (links == false && rechts == false) {
				if	(Math.round(Math.random() * 2) == 1) {
					links = false;
					rechts = true;
				}
				if	(Math.round(Math.random() * 2) == 2) {
					links = true;
					rechts = false;
				}
			}
				
		}
		
	}

}