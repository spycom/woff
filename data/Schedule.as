package data {
	import flash.display.*;
	import data.ScheduleRow;

	import flash.events.*;
	import flash.utils.Timer;
	
	/**
	 * @author spy
	 */
	public class Schedule extends Sprite{
		
	private var angle:int;
	private var rowsArray:Array;
	
		public function Schedule() {
			rowsArray = new Array();
			
			for (var i:int=0; i<10; i++) {
				rowsArray[i] = new ScheduleRow();
				rowsArray[i].y = 110+i*35;
				rowsArray[i].scaleY = 0;
				
				addChild(rowsArray[i]);
			}
			
			var timer:Timer = new Timer(10, 45);
				timer.addEventListener(TimerEvent.TIMER, timerEvent);
				timer.start();
			
			angle = 0;
		}
		
		private function timerEvent(e:Event):void {
			for (var i:int=0; i<10; i++) {
				rowsArray[i].x = 0 - 640*Math.sin(angle*3.14/180);
				rowsArray[i].scaleY += 0.0222
			}
			
			angle +=2;
			
		}
	}
}
