package data{
	import flash.display.*;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import data.text;
	
	public class smartButton extends Sprite{
		
	private var timer:Timer;
	private var main:Sprite;
	private var angle:int;
	private var direction:int;
	
		public function smartButton()  {
			
			main = new Sprite();
			
			var select1 = new Sprite();
			select1.graphics.beginFill(0xffffff,1);
			select1.graphics.lineStyle(1, 0xcccccc);
			select1.graphics.drawRoundRect(10, 105, 300, 114, 10);
			
			var new_text:text = new text(30, 155, "Расписание?!", "1");
			
			timer = new Timer(5, 45);
			timer.addEventListener(TimerEvent.TIMER, timerEvent);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, timerCompleteEvent);
			
			angle = 0;
			direction = 2;
			
			main.addChild(select1);
			main.addChild(new_text);
		}
		
		public function show():void {
			addChild(main);
			angle = 0;
			direction = 2;
			timer.stop();
			timer.reset();	
			timer.start();		
		}
		
		public function hide():void {
			timer.stop();
			timer.reset();	
			direction = -2;
			timer.start();			
		}
		
		private function timerEvent(e:TimerEvent):void {
			main.y = 110*Math.sin(angle*3.14/180);
			angle += direction;
			if ( angle == 0) {
				timer.stop();
			}
		}
		
		private function timerCompleteEvent(e:TimerEvent):void {
			timer.reset();
		}
	}
}