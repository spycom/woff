package data
{
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.filters.BevelFilter;
	import flash.filters.GlowFilter;
	import flash.net.URLRequest;
	import flash.utils.Timer;
	import flash.display.*;
	
	//import org.osmf.events.TimeEvent;
	
	public class down_arrow extends Sprite
	{
		public var timer:Timer;
		public var w:Number;
		public var loader:Bitmap;
		
		[Embed(source='/Users/spycom/dev/FF/images/down_arrow.png')]
		public var loader_:Class;
		
		public function down_arrow()
		{
			var myBevel:BevelFilter = new BevelFilter();
			var myGlow:GlowFilter = new GlowFilter();
			
			loader = new loader_();
			//loader.load(new URLRequest("http://62.76.177.54/woff_images/img/down_arrow.png"));
			
			addChild(loader);
			loader.alpha = 0.8;
			loader.scaleX = 0.25;
			loader.scaleY = 0.25;
			loader.filters = [myBevel,myGlow];
			
			timer = new Timer(50, 180);
			timer.addEventListener(TimerEvent.TIMER, timerEvent);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, timerComplete);
			
			w = new Number();
			w = 0;
			
			timer.start();
			
		}
		public function timerEvent(e:TimerEvent):void {
			
			loader.y = Math.cos(w) * 6 - 8;
			//loader.y += w;
			w += 0.21;
			//w++;
		}
		public function timerComplete(e:TimerEvent):void {
			timer.reset();
			timer.start();
			w = 0;
		}
	}
}