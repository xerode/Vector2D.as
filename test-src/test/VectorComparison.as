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
	}
}
