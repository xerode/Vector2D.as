package xerode.geom {
	/**
	 * @author paul.bennett
	 */
	public class Vector2D {
		
		/*
		 * PROPERTIES
		 */
		
			private var _x:Number;
			private var _y:Number;

		/*
		 * PROPERTY ACCESSORS/MUTATORS
		 */
			public function get x():Number {
				return _x;
			}
	
			public function set x( x:Number ):void {
				_x = x;
			}
	
			public function get y():Number {
				return _y;
			}
	
			public function set y( y:Number ):void {
				_y = y;
			}
		
	}
}
