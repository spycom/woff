package data{
	//import api.MD5;
	import flash.display.*;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import flash.net.*;
	import flash.events.Event;
	import flash.geom.Matrix;
	import flash.filters.BevelFilter;

	import data.text;
	
	
	public class smartButton extends Sprite{
		
	private var timer:Timer;
	private var main:Sprite;
	private var angle:int;
	private var direction:int;
	private var woff_general_request:URLRequest;
	private var new_text:text;
	private var table:Array;
	private var select1:Sprite;
	
		public function smartButton(woff_uid:int, this_tournament:int)  {
			
			var myBevel = new BevelFilter();
			myBevel.angle = 90;
			//myBevel.distanse = 2;
			myBevel.strength = 0.2;
			
			main = new Sprite();
			
			var fillType:String = GradientType.RADIAL;
			var colors:Array = [0xffffff, 0xe8e8e8];
			var alphas:Array = [1, 1];
			var ratios:Array = [0, 150];
			var matr:Matrix = new Matrix();
			matr.createGradientBox(550, 400, 0, -100, -50);
			
			var spreadMethod:String = SpreadMethod.PAD;
			
			
			
			select1 = new Sprite();
			select1.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod);
			select1.graphics.lineStyle(0, 0xffffff);
			select1.graphics.drawRoundRectComplex(10, 105, 304, 112, 0, 0, 40, 40);
			select1.filters = [myBevel];
			
			timer = new Timer(5, 45);
			timer.addEventListener(TimerEvent.TIMER, timerEvent);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, timerCompleteEvent);
			
			angle = 0;
			direction = 2;
			
			main.addChild(select1);
			
			table = new Array();
			for (var i:int=0; i<10; i++) {
				table[i] = new text(30, 105+i*10, "", "2");
				main.addChild(table[i]);
			}
			
			// request
			if (this_tournament !== 0) {
			var woff_general_request = new URLRequest("http://62.76.177.54/api.php");
			
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
			
			} else {
				table[4].setText("                ТУРНИР ЗАКОНЧЕН  ");
			}
		}
		
		private function completeEvent(e:Event):void {
			var woff_answer:XML = new XML(e.target.data);
			
			for (var i:int=0; i<woff_answer.match.length(); i++) {
				if ( i == 0) {
				table[i].setText(woff_answer.match[i].no.text() + " тур : " + woff_answer.match[i].starts_at.text() + " - " + woff_answer.match[i].title_owner.text() + " - " + woff_answer.match[i].title_guest.text());
				} else {
					if ( woff_answer.match[i].no.text() == woff_answer.match[i-1].no.text()) {
					table[i].setText("             " + woff_answer.match[i].starts_at.text() + " - " + woff_answer.match[i].title_owner.text() + " - " + woff_answer.match[i].title_guest.text());
					} else {
						table[i].setText(woff_answer.match[i].no.text() + " тур : " + woff_answer.match[i].starts_at.text() + " - " + woff_answer.match[i].title_owner.text() + " - " + woff_answer.match[i].title_guest.text());
				
					}
				}
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
			main.scaleY =  1 + Math.sin(angle*3.14/180)/20;
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