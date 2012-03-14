package test {
	import org.flexunit.Assert;

	import xerode.geom.Vector2D;

	/**
	 * @author paul.bennett
	 */
	public class Vector2DTest {

		[Test]
		public function add():void {
			var nv:Vector2D = new Vector2D( 0, 0 );
			var rv:Vector2D = nv.add( new Vector2D( 1, 2 ) );

			Assert.assertTrue( "Result vector x property is 1", rv.x == 1 );
			Assert.assertTrue( "Result vector y property is 2", rv.y == 2 );
		}

		[Test]
		public function clone():void {
			var nv:Vector2D = new Vector2D( 1, 2 );
			var rv:Vector2D = nv.clone();

			Assert.assertTrue( "Result vector x property is 1", rv.x == 1 );
			Assert.assertTrue( "Result vector y property is 2", rv.y == 2 );
		}

		[Test]
		public function copyFrom():void {
			var nv:Vector2D = new Vector2D( 1, 2 );
			var cv:Vector2D = new Vector2D( 3, 4 );

			nv.copyFrom( cv );

			Assert.assertTrue( "Result vector x property is 3", nv.x == 3 );
			Assert.assertTrue( "Result vector y property is 4", nv.y == 4 );
		}

		[Test]
		public function decrementBy():void {
			var nv:Vector2D = new Vector2D( 1, 2 );
			var cv:Vector2D = new Vector2D( 1, 2 );

			nv.decrementBy( cv );

			Assert.assertTrue( "Result vector x property is 0", nv.x == 0 );
			Assert.assertTrue( "Result vector y property is 0", nv.y == 0 );
		}

		[Test]
		public function equals():void {
			var nv:Vector2D = new Vector2D( 1, 2 );
			var cv:Vector2D = new Vector2D( 1, 2 );

			Assert.assertTrue( "Two new Vector2Ds are equal", nv.equals( cv ) );
		}

		[Test]
		public function incrementBy():void {
			var nv:Vector2D = new Vector2D( 1, 2 );
			var cv:Vector2D = new Vector2D( 10, 20 );

			nv.incrementBy( cv );

			Assert.assertTrue( "Result vector x property is 0", nv.x == 11 );
			Assert.assertTrue( "Result vector y property is 0", nv.y == 22 );
		}
		
		[Test]
		public function nearEquals():void {
			var nv:Vector2D = new Vector2D( 10, 10 );
			var cv:Vector2D = new Vector2D( 9, 9 );

			Assert.assertTrue( "Two new Vector2Ds are nearEqual", nv.nearEquals( cv, 2 ) );
		}

		[Test]
		public function negate():void {
			var nv:Vector2D = new Vector2D( 1, 2 );

			nv.negate();

			Assert.assertTrue( "Result vector x property is -1", nv.x == -1 );
			Assert.assertTrue( "Result vector y property is -2", nv.y == -2 );
		}

		[Test]
		public function scaleBy():void {
			var nv:Vector2D = new Vector2D( 1, 2 );

			nv.scaleBy( 10 );

			Assert.assertTrue( "Result vector x property is 10", nv.x == 10 );
			Assert.assertTrue( "Result vector y property is 20", nv.y == 20 );
		}

		[Test]
		public function setTo():void {
			var nv:Vector2D = new Vector2D( 100, 200 );

			nv.setTo( 2, 4 );

			Assert.assertTrue( "Result vector x property is 2", nv.x == 2 );
			Assert.assertTrue( "Result vector y property is 4", nv.y == 4 );
		}

		[Test]
		public function stringTo():void {
			var nv:Vector2D = new Vector2D( 1, 2 );

			Assert.assertTrue( "Result vector toString() is Vector2D(1, 2)", nv.toString() == "Vector2D(1, 2)" );
		}

		[Test]
		public function subtract():void {
			var nv:Vector2D = new Vector2D( 0, 0 );
			var rv:Vector2D = nv.add( new Vector2D( -1, -2 ) );

			Assert.assertTrue( "Result vector x property is -1", rv.x == -1 );
			Assert.assertTrue( "Result vector y property is -2", rv.y == -2 );
		}
		
		[Test]
		public function length():void {
			var nv:Vector2D = new Vector2D( 3, 4 );
			
			Assert.assertTrue( "Result length property is 5", nv.length == 5 );
		}
		
		[Test]
		public function lengthSquared():void {
			var nv:Vector2D = new Vector2D( 3, 4 );
			
			Assert.assertTrue( "Result length property is 25", nv.lengthSquared == 25 );
		}
		
		[Test]
		public function zero():void {
			var nv:Vector2D = new Vector2D( 10, 10 );
			
			nv.zero();
			
			Assert.assertTrue( "x and y are both 0", ( nv.x == 0 && nv.y == 0 ) );
		}
		
		[Test]
		public function isZero():void {
			var nv:Vector2D = new Vector2D( 0, 0 );
			
			Assert.assertTrue( "x and y are both 0", nv.isZero() );
			
			nv = new Vector2D( 4, 4 );
			
			Assert.assertFalse( "x and y are both not 0", nv.isZero() );
		}
		
		[Test]
		public function truncate():void {
			var nv:Vector2D = new Vector2D( 8, 8 );
			
			nv.truncate( 2 );
			
			Assert.assertTrue( "length is 2", nv.length == 2 );
			
		}
		
		[Test]
		public function isNormalized():void {
			var nv:Vector2D = new Vector2D( 8, 8 );
			
			nv.truncate( 1 );
			
			Assert.assertTrue( "length is 1", nv.length == 1 );
			
		}
		
		[Test]
		public function sign():void {
			var nv:Vector2D = new Vector2D( 8, 8 );
			var cv1:Vector2D = new Vector2D( 10, 10 );
			
			Assert.assertTrue( "cv1 is to the right of nv", nv.sign( cv1 ) == 1 );
			
			/*
			var cv2:Vector2D = new Vector2D( 7, 8 );
			
			Assert.assertTrue( "cv2 is to the left of nv", nv.sign( cv2 ) == -1 );
			*/
		}
		
		[Test]
		public function dist():void {
			var nv:Vector2D = new Vector2D( 0, 0 );
			var cv:Vector2D = new Vector2D( 3, 4 );
			
			Assert.assertTrue( "Distance is 5", nv.dist( cv ) == 5 );
		}
		
		[Test]
		public function distSQ():void {
			var nv:Vector2D = new Vector2D( 0, 0 );
			var cv:Vector2D = new Vector2D( 3, 4 );
			
			Assert.assertTrue( "Distance is 25", nv.distSQ( cv ) == 25 );
		}
		
	}
}
