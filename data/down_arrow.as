package data
{
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.filters.BevelFilter;
	import flash.filters.GlowFilter;
	import flash.net.URLRequest;
	
	public class down_arrow extends Sprite
	{
		public function down_arrow()
		{
			var myBevel:BevelFilter = new BevelFilter();
			var myGlow:GlowFilter = new GlowFilter();
			
			var loader:Loader = new Loader();
			loader.load(new URLRequest("http://woff73.valuehost.ru/woff_images/img/down_arrow.png"));
			//.addEventListener(
			addChild(loader);
			loader.alpha = 0.8;
			loader.scaleX = 0.25;
			loader.scaleY = 0.25;
			loader.filters = [myBevel,myGlow];
			
		}
	}
}