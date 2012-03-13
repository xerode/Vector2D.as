package 
{
	import flash.geom.Vector3D;
	import flash.display.Sprite;

	public class Main extends Sprite
	{
		public function Main()
		{
			// Launch your application by right clicking within this class and select: Debug As > FDT SWF Application
			
			var v:Vector3D = new Vector3D( 0, 1, 2 );
			
			trace( v.toString() );
			
		}
	}
}
