package data {
	
	import flash.display.*;
	import flash.net.*;
	import data.text;
	import flash.utils.Timer;
	import flash.events.*;
	
	
	public class hint extends Sprite {
		
private var hint_form:Loader;
private var hint_text:text;
private var timer:Timer;

		public function hint():void {
			
			hint_form = new Loader();
			hint_form.load(new URLRequest("http://woff73.valuehost.ru/woff_images/" + "img4/points.png"));
			hint_form.scaleX = 1.3;
			
			hint_text = new text(0, 0, "подсказка", "12");
			
			timer = new Timer (50, 0);
			timer.addEventListener(TimerEvent.TIMER, posHint);
		}
		
		
		
		public function showHint(new_text:String):void {
			
			hint_form.x = mouseX - 120;
			hint_form.y = mouseY - 15;
			hint_text.x = mouseX - 67;
			hint_text.y = hint_form.y + 4;
			
			hint_text.setText(new_text);
			addChild(hint_form);
			addChild(hint_text);
			timer.start();
		}
		
		public function hideHint():void {
			
			removeChild(hint_form);
			removeChild(hint_text);
			timer.stop();
		}
		
		// позиционирование подсказки
		public function posHint(e:TimerEvent):void {
			hint_form.x = mouseX - 120;
			hint_form.y = mouseY - 15;
			hint_text.x = mouseX - 67;
			hint_text.y = hint_form.y + 4;
		}
	}
}