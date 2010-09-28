// не используется
package data {
	import flash.display.*;
	import data.text;
	import flash.net.*;
	import flash.events.*;

	public class list extends Sprite {
		
		private var number:int;
		private var number_txt:text;
		private var avatar:Loader;
		private var nazvanie:text;
		private var nazvanie2:text;
		private var points:text;
		private var info:Loader;
		private var sostav:Loader;
		private var list_:Sprite;
		
		public function list() {
			for (var i:int=0; i<6; i++) {
				
				var freq:int = new int(55*i);
				
			number = i+1;
			number_txt = new text(5,freq, String(number)+".","2");
			
			nazvanie = new text(68, freq, "BLA BLA BLA BLA", "2");
			nazvanie2 = new text(68, 10+freq, "blablabla bla bla", "2");
			
			points = new text(120, 37+freq, "Очков: 000", "2");
			
			avatar = new Loader();
			avatar.load(new URLRequest("http://high.dih.ru/high/img/img3/fonava.png"));
			avatar.x = 10;
			avatar.y = freq;
			
			//field.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			//field.contentLoaderInfo.addEventListener(Event.COMPLETE, backgroundComplete);
			
			info = new Loader();
			info.load(new URLRequest("http://high.dih.ru/high/img/img3/info.png"));
			info.x = 68;
			info.y = 35+freq;
			info.addEventListener(MouseEvent.CLICK, infoHandler);
			//getURL("http://www.web-article.com.ua", _blank);
			
			
			
			sostav = new Loader();
			sostav.load(new URLRequest("http://high.dih.ru/high/img/img3/sostav.png"));
			sostav.x = 85;
			sostav.y = 35+freq;
			sostav.addEventListener(MouseEvent.CLICK, button1event);
			
			addChild(number_txt);
			addChild(nazvanie);
			addChild(nazvanie2);
			addChild(points);
			addChild(avatar);
			addChild(info);
			addChild(sostav);
			}
		}
		public function infoHandler (e:MouseEvent):void {
			navigateToURL( new URLRequest("http://insidevk.com") );
		}
		public function button1event (e:MouseEvent):void {
			dispatchEvent(new Event(MouseEvent.CLICK));
		}
	}
}