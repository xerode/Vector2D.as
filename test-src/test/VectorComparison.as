package test {
	import flash.geom.Vector3D;
	import xerode.geom.Vector2D;
	import org.flexunit.Assert;

	/**
	 * @author paul.bennett
	 */
	public class VectorComparison {

		[Test]
		public function add():void {
			var v2d:Vector2D = new Vector2D( 0, 0 );
			var v3d:Vector3D = new Vector3D( 0, 0, 0 );

			var rv2d:Vector2D = v2d.add( new Vector2D( 2, 2 ) );
			var rv3d:Vector3D = v3d.add( new Vector3D( 2, 2, 0 ) );

			Assert.assertTrue( "v2d.x == v3d.x", rv2d.x == rv3d.x );
			Assert.assertTrue( "v2d.y == v3d.y", rv2d.y == rv3d.y );
		}
		
		[Test]
		public function decrementBy():void {
			var v2d:Vector2D = new Vector2D( 4, 4 );
			var v3d:Vector3D = new Vector3D( 4, 4, 0 );

			v2d.decrementBy( new Vector2D( 4, 4 ) );
			v3d.decrementBy( new Vector3D( 4, 4, 0 ) );

			Assert.assertTrue( "v2d.x == v3d.x", v2d.x == v3d.x );
			Assert.assertTrue( "v2d.y == v3d.y", v2d.y == v3d.y );
		}
		
		[Test]
		public function incrementBy():void {
			var v2d:Vector2D = new Vector2D( 4, 4 );
			var v3d:Vector3D = new Vector3D( 4, 4, 0 );

			v2d.incrementBy( new Vector2D( 4, 4 ) );
			v3d.incrementBy( new Vector3D( 4, 4, 0 ) );

			Assert.assertTrue( "v2d.x == v3d.x", v2d.x == v3d.x );
			Assert.assertTrue( "v2d.y == v3d.y", v2d.y == v3d.y );
		}
		
		[Test]
		public function nearEquals():void {
			var v2d:Vector2D = new Vector2D( 9, 9 );
			var v3d:Vector3D = new Vector3D( 9, 9, 0 );
			
			var c2d:Vector2D = new Vector2D( 10, 10 );
			var c3d:Vector3D = new Vector3D( 10, 10, 0 );

			Assert.assertTrue( "v2d.nearEquals( c2d, 1 ) == v3d.nearEquals( c3d, 1 )", v2d.nearEquals( c2d, 1 ) == v3d.nearEquals( c3d, 1 ) );
			Assert.assertTrue( "v2d.nearEquals( c2d, 0.5 ) == v3d.nearEquals( c3d, 0.5 )", v2d.nearEquals( c2d, 0.5 ) == v3d.nearEquals( c3d, 0.5 ) );
		}
		
		[Test]
		public function negate():void {
			var v2d:Vector2D = new Vector2D( 4, 4 );
			var v3d:Vector3D = new Vector3D( 4, 4, 0 );

			v2d.negate();
			v3d.negate();

			Assert.assertTrue( "v2d.x == v3d.x", v2d.x == v3d.x );
			Assert.assertTrue( "v2d.y == v3d.y", v2d.y == v3d.y );
		}
		
		[Test]
		public function normalize():void {
			var v2d:Vector2D = new Vector2D( 4, 4 );
			var v3d:Vector3D = new Vector3D( 4, 4, 0 );

			Assert.assertTrue( "v2d.length == v3d.length", v2d.normalize() == v3d.normalize() );
			Assert.assertTrue( "v2d.x == v3d.x", v2d.x == v3d.x );
			Assert.assertTrue( "v2d.y == v3d.y", v2d.y == v3d.y );
		}
		
		[Test]
		public function setTo():void {
			var v2d:Vector2D = new Vector2D( 4, 4 );
			var v3d:Vector3D = new Vector3D( 4, 4, 0 );

			v2d.setTo( 8, 8 );
			v3d.setTo( 8, 8, 0 );

			Assert.assertTrue( "v2d.x == v3d.x", v2d.x == v3d.x );
			Assert.assertTrue( "v2d.y == v3d.y", v2d.y == v3d.y );
		}
		
		[Test]
		public function subtract():void {
			var v2d:Vector2D = new Vector2D( 0, 0 );
			var v3d:Vector3D = new Vector3D( 0, 0, 0 );

			var rv2d:Vector2D = v2d.subtract( new Vector2D( 2, 2 ) );
			var rv3d:Vector3D = v3d.subtract( new Vector3D( 2, 2, 0 ) );

			Assert.assertTrue( "v2d.x == v3d.x", rv2d.x == rv3d.x );
			Assert.assertTrue( "v2d.y == v3d.y", rv2d.y == rv3d.y );
		}
		
		[Test]
		public function length():void {
			var v2d:Vector2D = new Vector2D( 3, 4 );
			var v3d:Vector3D = new Vector3D( 3, 4, 0 );
			
			Assert.assertTrue( "v2d.length == v3d.length", v2d.length == v3d.length );
		}
		
		[Test]
		public function lengthSquared():void {
			var v2d:Vector2D = new Vector2D( 3, 4 );
			var v3d:Vector3D = new Vector3D( 3, 4, 0 );
			
			Assert.assertTrue( "v2d.lengthSquared == v3d.lengthSquared", v2d.lengthSquared == v3d.lengthSquared );
		}
		
	}
}
