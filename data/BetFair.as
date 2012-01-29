package data{
	import flash.display.*;
	import data.text;
	import data.hint;
	import flash.filters.DropShadowFilter;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.events.MouseEvent;

	public class BetFair extends Sprite {
		
		private var myShad:DropShadowFilter;
		private var myShad2:DropShadowFilter;
		private var localHint:hint;
		
		public function BetFair() {
			
			//var betfair_logo:Loader = new Loader();
			//betfair_logo.load(new URLRequest("http://cache.cdnbf.net/sports/ALL_BRANDS/GBR/ru/prospect/images/logo/logo_www.gif"));
			
			myShad = new DropShadowFilter();
			myShad.inner = true;
			myShad.distance = 1;
			//myShad.quality = 2;
			//myShad.strength = 0.5;
			
			myShad2 = new DropShadowFilter();
			//myShad2.inner = true;
			myShad2.distance = 1;
			//myShad2.quality = 2;
			 localHint = new hint();
			 	
			var insert:Sprite = new Sprite();
				insert.graphics.beginFill(0xffffff, 1); 
				insert.graphics.lineStyle(0, 0xffffff);
				insert.graphics.drawRoundRect(100, 0, 20, 20, 13);
				insert.filters = [myShad];
				
			var insert_field = new text(105, 1, "", "search_query");
			
			var insert2:Sprite = new Sprite();
				insert2.graphics.beginFill(0xffffff, 1); 
				insert2.graphics.lineStyle(0, 0xffffff);
				insert2.graphics.drawRoundRect(150, 0, 20, 20, 13);
				insert2.filters = [myShad];
			
			var insert_field2 = new text(155, 1, "", "search_query");
				
			var sep:text = new text(132, 0, ":", "2");
			
			var koef1:Sprite = new Sprite();
				koef1.graphics.beginFill(0x99CCCC, 1); 
				koef1.graphics.lineStyle(0, 0x99CCCC);
				koef1.graphics.drawRoundRect(47, 20, 30, 20, 10);
				koef1.filters = [myShad2];
			var koef1_txt:text = new text(50, 21, "0.00", "2");
				koef1_txt.setFull("Коэф. победы");
				koef1_txt.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
				koef1_txt.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
			
			var koef2:Sprite = new Sprite();
				koef2.graphics.beginFill(0x99CCCC, 1); 
				koef2.graphics.lineStyle(0, 0x99CCCC);
				koef2.graphics.drawRoundRect(122, 20, 30, 20, 10);
				koef2.filters = [myShad2];
			var koef2_txt:text = new text(125, 21, "0.00", "2");
				koef2_txt.setFull("Коэф. ничьей");
				koef2_txt.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
				koef2_txt.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
				
			var koef3:Sprite = new Sprite();
				koef3.graphics.beginFill(0x99CCCC, 1); 
				koef3.graphics.lineStyle(0, 0x99CCCC);
				koef3.graphics.drawRoundRect(197, 20, 30, 20, 10);
				koef3.filters = [myShad2];
			var koef3_txt:text = new text(200, 21, "0.00", "2");
				koef3_txt.setFull("Коэф. победы");
				koef3_txt.addEventListener(MouseEvent.MOUSE_OVER, showMouseHint);
				koef3_txt.addEventListener(MouseEvent.MOUSE_OUT, hideMouseHint);
				
			var separator:Sprite = new Sprite();
				separator.graphics.beginFill(0xffffff, 1); 
				separator.graphics.lineStyle(1, 0xcccccc);
				separator.graphics.drawRoundRect(-40, -3, 360, 45, 30);
			
			//addChild(betfair_logo);
			addChild(separator);
			addChild(insert);
			addChild(insert2);
			addChild(insert_field);
			addChild(insert_field2);
			addChild(sep);
			addChild(koef1);
			addChild(koef2);
			addChild(koef3);
			addChild(koef1_txt);
			addChild(koef2_txt);
			addChild(koef3_txt);
			addChild(localHint);
		}
		private function showMouseHint(e:MouseEvent):void {
			localHint.showHint(e.currentTarget.full);
		}
		private function hideMouseHint(e:MouseEvent):void {
			localHint.hideHint();
		}
	}
}