package data{
	//import api.MD5;
	import flash.display.*;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.net.*;
	import flash.events.Event;

	import data.text;
	
	
	public class smartButton extends Sprite{
		
	private var timer:Timer;
	private var main:Sprite;
	private var angle:int;
	private var direction:int;
	private var woff_general_request:URLRequest;
	private var new_text:text;
	private var table:Array;
	
		public function smartButton(woff_uid:int, this_tournament:int)  {
			
			main = new Sprite();
			
			var select1 = new Sprite();
			select1.graphics.beginFill(0xe8e8e8,1);
			select1.graphics.lineStyle(2, 0xcccccc);
			select1.graphics.drawRoundRect(20, 105, 285, 112, 20);
			
			
			timer = new Timer(5, 45);
			timer.addEventListener(TimerEvent.TIMER, timerEvent);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, timerCompleteEvent);
			
			angle = 0;
			direction = 2;
			
			main.addChild(select1);
			
			table = new Array();
			for (var i:int=0; i<10; i++) {
				table[i] = new text(50, 110+i*10, "--", "2");
				main.addChild(table[i]);
			}
			
			// request
			var woff_general_request = new URLRequest("http://woff73.valuehost.ru/tapi.php");
			
			var params:Object = {method: "getMatchList", id_tm: this_tournament};
				
				var keys:Array = new Array();
				for (var k:String in params)
					keys.push(k);
				keys.sort();
				var woff_sig:String = String(woff_uid);			
					for (var i:int = 0; i < keys.length; i++)
						woff_sig = woff_sig + keys[i] + "=" + params[keys[i]];
						
				woff_sig = woff_sig + "DuIP8H5HnE";
				
				woff_sig = MD5.encrypt(woff_sig); // используем метод hash класса md5 и получаем сигнатуру
				
				params.sig = String(woff_sig);
				params.uid = String(woff_uid);
				woff_general_request.data = new URLVariables();
				
  				for (var k:String in params)
					woff_general_request.data[k] = params[k];
					
				var woff_loader:URLLoader = new URLLoader();
				woff_loader.addEventListener(Event.COMPLETE, completeEvent);
				woff_loader.load(woff_general_request);
		}
		
		private function completeEvent(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);
			
			for (var i:int=0; i<woff_answer.match.length(); i++) {
				table[i].setText(woff_answer.match[i].starts_at.text() + " - " + woff_answer.match[i].title_owner.text() + " - " + woff_answer.match[i].title_guest.text());
				
			}
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
			if ( angle <= 0) {
				timer.stop();
			}
		}
		
		private function timerCompleteEvent(e:TimerEvent):void {
			timer.reset();
		}
	}
}