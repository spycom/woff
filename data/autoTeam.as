package {
	import flash.display.*;
	//import data.text;
	import flash.events.*;	
	import flash.utils.Timer;
	

	public class autoTeam extends Sprite {
		
private var rollingTimer:Timer;
private var angle:int;
private var fon:Sprite;
	
		public function autoTeam() {
			
			fon = new Sprite();
			fon.graphics.beginFill(0xffffff);
			fon.graphics.lineStyle(0, 0x999999);
			fon.graphics.drawRoundRect(250, 200, 180, 100, 35);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			fon.addEventListener(MouseEvent.CLICK, fon_click);
			fon.x = 250;
			
			rollingTimer = new Timer(10, 45);
			rollingTimer.addEventListener(TimerEvent.TIMER, rollingTimerEvent);
			rollingTimer.addEventListener(TimerEvent.TIMER_COMPLETE, rollingTimerCompleteEvent);
			
			angle = new int(180);
			
			addChild(fon);
			//rollingTimer.start();
		}
		
		private function fon_click(e:MouseEvent):void {
			 rollingTimer.start();
		}
		private function rollingTimerEvent(e:TimerEvent):void {
			
			//fon.x = 250 + 250*(Math.sin(angle * Math.PI/180));
			
			angle += 2;
			if(angle == 0) {
				angle
			}
			if(angle == 272) {
				angle = 0;
				//fon.x = 0;
			}
		}
		private function rollingTimerCompleteEvent(e:TimerEvent):void {
			rollingTimer.reset(); 
		}
	}
}