package Objects 
{
	import flash.display.Sprite;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Chanisco
	 */
	public class Bullet extends Sprite
	{
		
		public function Bullet() 
		{
			
		}
		 public function followTarget($target:Point):void{
				if($target != null)
			   {
				var xdiff:Number = ($target.x - this.x);
				var ydiff:Number = ($target.y - this.y);
				var radiants:Number = Math.atan2(ydiff, xdiff);
				var degrees:Number = radiants * 180 / Math.PI;
				
				this.rotation = degrees;
			   }
			  }
			  
			  public function movement($speed:Number):void {
			   var movementSpeed:Point = new Point();
			   movementSpeed.x = Math.cos(this.rotation / 180 *Math.PI)* $speed;
			   movementSpeed.y = Math.sin(this.rotation / 180 * Math.PI)* $speed;
			   
			   this.x += movementSpeed.x
			   this.y += movementSpeed.y
			  }
	}

}