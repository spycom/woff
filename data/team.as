package data {
	import flash.display.*;
	import flash.net.*;

	public class team extends Sprite {
		
		private var number:int;
		private var ticket_status:text;
		private var avatar:Loader;
		private var nazvanie:text;
		private var nazvanie2:text;
		private var style:text;
		private var info:Loader;
		private var razdelitel:Loader;
		//private var list_:Sprite;
		
		public function team() {
			
			ticket_status = new text(10,12, "Команда допущена!","1");
			
			for (var i:int=1; i<12; i++) {
				
				var freq:int = new int(29*i);
				
			number = i;
			
			if (i == 1) {
				info = new Loader();
				info.load(new URLRequest("http://high.dih.ru/high/img/img3/vrat.png"));
				info.x = 154;
				info.y = freq;
				
				style = new text(173, 7+freq, "ВР", "2");
			}
			
			if (i > 1 && i < 5) {
				info = new Loader();
				info.load(new URLRequest("http://high.dih.ru/high/img/img3/zaschit.png"));
				info.x = 154;
				info.y = freq;
				style = new text(170, 7+freq, "ЗАЩ", "2");
			}
			if (i > 4 && i < 8) {
				info = new Loader();
				info.load(new URLRequest("http://high.dih.ru/high/img/img3/poluzasch.png"));
				info.x = 154;
				info.y = freq;
				
				style = new text(173, 7+freq, "ПЗ", "2");
			}
			if (i > 7) {
				info = new Loader();
				info.load(new URLRequest("http://high.dih.ru/high/img/img3/napad.png"));
				info.x = 154;
				info.y = freq;
				
				style = new text(170, 7+freq, "НАП", "2");
			}
			
			nazvanie = new text(5, freq, "Игорь Акинфеев", "3");
			nazvanie2 = new text(5, 10+freq, "ЦСКА / Москва", "2");
			
			avatar = new Loader();
			avatar.load(new URLRequest("http://high.dih.ru/high/img/img3/fonava.png"));
			avatar.x = 10;
			avatar.y = freq;
			
			//field.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressHandler);
			//field.contentLoaderInfo.addEventListener(Event.COMPLETE, backgroundComplete);
						
			razdelitel = new Loader();
			razdelitel.load(new URLRequest("http://high.dih.ru/high/img/img3/razdelitel.png"));
			razdelitel.x = 7;
			razdelitel.y = 25+freq;
			
			
			addChild(ticket_status);
			addChild(nazvanie);
			addChild(nazvanie2);
			//addChild(avatar);
			addChild(info);
			addChild(razdelitel);
			addChild(style);
			}
		}
		
	}
}