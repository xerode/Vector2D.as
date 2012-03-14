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
		 * METHODS
		 */
			
			/*
			 * CONSTRUCTOR
			 * @param	nx
			 * @param	ny
			 */
			public function Vector2D( nx:Number = 0, ny:Number = 0 ) {
				
				this.x = nx;
				this.y = ny;
				
			}
			
			/**
			 * Adds the value of the x and y elements of the current Vector2D object to the values of the x and y elements of another Vector2D object.
			 * @param	nv
			 * @return
			 */
			public function add( nv:Vector2D ):Vector2D {
				return new Vector2D( this.x + nv.x, this.y + nv.y );
			}
			
			/**
			 * Returns a new Vector2D object that is an exact copy of the current Vector2D object.
			 * @return
			 */
			public function clone():Vector2D {
				return new Vector2D( this.x, this.y );
			}
			
			/**
			 * Copies all of vector data from the source Vector2D object into the calling Vector2D object.
			 * @param	nv
			 */
			public function copyFrom( nv:Vector2D ):void {
				this.x = nv.x;
				this.y = nv.y;
			}
			
			// 2D crossProduct?
			// http://www.gamedev.net/topic/289972-cross-product-of-2d-vectors/
			
			/**
			 * Decrements the value of the x and y elements of the current Vector2D object by the values of the x and y elements of specified Vector2D object.
			 * @param	nv
			 */
			public function decrementBy( nv:Vector2D ):void {
				
				this.x -= nv.x;
				this.y -= nv.y;
				
			}
			
			/**
			 * Determines whether two Vector2D objects are equal by comparing the x and y elements of the current Vector2D object with a specified Vector2D object.
			 * @param	nv
			 * @return
			 */
			public function equals( nv:Vector2D ):Boolean {
				return( this.x == nv.x && this.y && nv.y );
			}
			
			/**
			 * Increments the value of the x and y elements of the current Vector2D object by the values of the x and y elements of a specified Vector2D object.
			 * @param	nv
			 */
			public function incrementBy( nv:Vector2D ):void {
				
				this.x += nv.x;
				this.y += nv.y;
				
			}
			
			/**
			 * Determines whether two Vector2D objects are equal by comparing the x and y elements of the current Vector2D object with a specified Vector2D object.
			 * @param	nv
			 * @return
			 */
			public function nearEquals( nv:Vector2D, tolerance:Number ):Boolean {
				
				var dx:Number = this.x - nv.x;
				var dy:Number = this.y - nv.y;
				
				return ( dx * dx + dy * dy ) <= tolerance * tolerance;
				
			}
			
			/**
			 * Sets the current Vector2D object to its inverse.
			 */
			public function negate():void {
				this.x *= -1;
				this.y *= -1;
			}
			
			// normalize
			
			// project
			
			/**
			 * Scales the current Vector2D object by a scalar, a magnitude.
			 * @param	s
			 */
			public function scaleBy( s:Number ):void {
				this.x *= s;
				this.y *= s;
			}
			
			/**
			 * Sets the members of Vector2D to the specified values.
			 * @param	nx
			 * @param	ny
			 */
			public function setTo( nx:Number, ny:Number ):void {
				this.x = nx;
				this.y = ny;
			}
			
			public function toString():String {
				return "Vector2D(" + this.x + ", " + this.y + ")";
			}
			
			/**
			 * Subtracts the value of the x and y elements of the current Vector2D object from the values of the x and y elements of another Vector2D object.
			 * @param	nv
			 * @return
			 */
			public function subtract( nv:Vector2D ):Vector2D {
				return new Vector2D( this.x - nv.x, this.y - nv.y );
			}

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
			
			public function get length():Number {
				
				return Math.sqrt( this.lengthSquared );
				
			}
			
			public function get lengthSquared():Number {
			
				return this.x * this.x + this.y * this.y;
				
			}
		
	}
}
