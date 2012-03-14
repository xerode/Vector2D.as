package 
{
	import flash.geom.Vector3D;
	import flash.display.Sprite;

	import xerode.geom.Vector2D;

	public class Main extends Sprite
	{
		public function Main()
		{
			// Launch your application by right clicking within this class and select: Debug As > FDT SWF Application
			
			var ov:Vector2D = new Vector2D( 1, 2 );
			var cv:Vector2D = new Vector2D( -4, 0 );
			
			var dp:Number = ov.dotProduct( cv );
			var s:Number = ov.sign( cv );
			
			trace( "Dot Product == " + dp );
			trace( "Sign == " + s );
			
		}
	}
}
