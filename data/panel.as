package data
{
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.utils.Timer;

	public class panel extends Sprite {
		
private var panel_sprite:Sprite;
private var rollingTimer:Timer;
private var vector:int;
private var angle:int;
[Embed(source='/Users/Art/Dropbox/FF/img4/replace.png')]
private var replace_bitmap:Class;
[Embed(source='/Users/Art/Dropbox/FF/img4/down.png')]
private var down_bitmap:Class;

		public function panel()
		{
			panel_sprite = new Sprite();
			panel_sprite.x = 640;
			panel_sprite.y = 125;
			
			var panel_fon:Sprite = new Sprite();
			panel_fon.graphics.beginFill(0xFFFFFF,1);
			panel_fon.graphics.lineStyle(1, 0xCCCCCC);
			panel_fon.graphics.drawRoundRect(0, 0, 210, 300, 25);
			//buyBudgetFon.addEventListener(MouseEvent.CLICK, buyBudgetClose);
			//buyBudgetFon.addEventListener(MouseEvent.MOUSE_OUT, scrollUp);
			
			var panelText = new text(10, 20, "", "first_hint");
			panelText.setText("Для покупки или " +
				"\nзамены" +
				" нажимайте " +
				"\nна кнопку " +
				"\nтрансфера - " +
				"\n\nХотите отправить" +
				"\nфутболиста в запас?" +
				"\nнажимайте -");
			
			var replace = new replace_bitmap();
			replace.x = 130;
			replace.y = 108;
			
			var down = new down_bitmap();
			down.x = 140;
			down.y = 215;
			
			panel_sprite.addChild(panel_fon);
			panel_sprite.addChild(panelText);
			panel_sprite.addChild(replace);
			panel_sprite.addChild(down);
			addChild(panel_sprite);
			
			rollingTimer = new Timer(5, 45);
			rollingTimer.addEventListener(TimerEvent.TIMER, rollingTimerEvent);
			rollingTimer.addEventListener(TimerEvent.TIMER_COMPLETE, rollingTimerCompleteEvent);
			
			vector = new int(-1);
			angle = new int(0);
		}
		
		private function rollingTimerEvent(e:TimerEvent):void {
			//panel_sprite.x += 5*vector;
			panel_sprite.x = 650 - 230*Math.sin(angle*3.14/180);
			angle += 2;
		}
		private function rollingTimerCompleteEvent(e:TimerEvent):void {
			rollingTimer.reset(); 
		}
		public function panelShow():void {
			vector = -1;
			rollingTimer.start();
		}
		public function panelHide():void {
			rollingTimer.stop();
			rollingTimer.reset(); 
			vector = 1;
			rollingTimer.start();
		}
	}
}