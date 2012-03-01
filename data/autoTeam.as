package data{
	import data.text;
	
	import flash.display.*;
	import flash.events.*;
	import flash.filters.BevelFilter;
	import flash.filters.DropShadowFilter;
	import flash.utils.Timer;
	
	public class autoTeam extends Sprite {
		
		private var rollingTimer:Timer;
		private var angle:int;
		private var fon:Sprite;
		private var dir:int;
		private var message:text;
		private var trigger:int;
		private var t_switcher_fon:Sprite;
		private var t_switcher_div0:Sprite;
		private var t_switcher_div1:Sprite;
		private var t_switcher_div2:Sprite;
		private var t_switcher_button:Sprite;
		private var t_switcher_0:Sprite;
		private var t_switcher_1:Sprite;
		private var t_switcher_2:Sprite;
		private var t_array:Array;
		private var t_pic_array:Array;
		private var m_switcher_fon:Sprite;
		private var m_switcher_button:Sprite;
		private var m_switcher_0:Sprite;
		private var m_switcher_1:Sprite;
		private var m_switcher_2:Sprite;
		private var m_array:Array;
		private var t:int;
		private var m:int;
		private var myShadow_i:DropShadowFilter;
		private var myBevel:BevelFilter;
		private var t_bottom_text:text;
		
		public function autoTeam() {
			
			myShadow_i = new DropShadowFilter();
			myShadow_i.inner = true;
			myShadow_i.distance = 1;
			
			myBevel = new BevelFilter();
			myBevel.strength = 0.5;
				
			fon = new Sprite();
			fon.graphics.beginFill(0x666666);
			//fon.graphics.lineStyle(0, 0x999999);
			fon.graphics.drawRoundRect(-40, 0, 260, 150, 55);
			fon.addEventListener(MouseEvent.CLICK, fon_click);
			fon.x = 680;
			fon.y = 200;
			
			t_switcher_fon = new Sprite();
			t_switcher_fon.graphics.beginFill(0xCCCCCC);
			t_switcher_fon.graphics.lineStyle(3, 0xCCCCCC);
			t_switcher_fon.graphics.drawRoundRect(0, 0, 150, 30, 20);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			//t_switcher_fon.addEventListener(MouseEvent.CLICK, fon_click);
			t_switcher_fon.x = 15;
			t_switcher_fon.y = 65;
			t_switcher_fon.filters = [];
			
			t_switcher_div0 = new Sprite();
			t_switcher_div0.graphics.beginFill(0x33CC00, 1);
			//t_switcher_div0.graphics.lineStyle(0, 0x33CC00);
			t_switcher_div0.graphics.drawRoundRectComplex(0, 0, 50, 30, 10, 0, 10, 0);
			t_switcher_div0.addEventListener(MouseEvent.MOUSE_OVER, over0);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			t_switcher_div0.addEventListener(MouseEvent.CLICK, s0_click);
			t_switcher_div0.x = 0;
			t_switcher_div0.y = 0;
			t_switcher_div0.alpha = 0.5;
			
			t_switcher_div1 = new Sprite();
			t_switcher_div1.graphics.beginFill(0x0099FF, 1);
			//t_switcher_div1.graphics.lineStyle(0, 0x0099FF);
			t_switcher_div1.graphics.drawRoundRectComplex(0, 0, 50, 30, 0 , 0,0,0);
			t_switcher_div1.addEventListener(MouseEvent.MOUSE_OVER, over1);
			//t_switcher_1.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			t_switcher_div1.addEventListener(MouseEvent.CLICK, s1_click);
			t_switcher_div1.x = 50;
			t_switcher_div1.y = 0;
			t_switcher_div1.alpha = 0.5;
			
			t_switcher_div2 = new Sprite();
			t_switcher_div2.graphics.beginFill(0xFF3333, 1);
			//t_switcher_div2.graphics.lineStyle(0, 0xFF3333);
			t_switcher_div2.graphics.drawRoundRectComplex(0, 0, 50, 30, 0 , 10, 0, 10);
			t_switcher_div2.addEventListener(MouseEvent.MOUSE_OVER, over2);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			t_switcher_div2.addEventListener(MouseEvent.CLICK, s2_click);
			t_switcher_div2.x = 100;
			t_switcher_div2.y = 0;
			t_switcher_div2.alpha = 0.5;
			
			t_switcher_button = new Sprite();
			t_switcher_button.graphics.beginFill(0x33CC00, 0.5);
			t_switcher_button.graphics.lineStyle(1, 0x999999);
			t_switcher_button.graphics.drawRoundRect(0, 0, 50, 30, 15);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			t_switcher_button.addEventListener(MouseEvent.CLICK, fon_click);
			t_switcher_button.x = 0;
			t_switcher_button.y = 0;
			
			t_switcher_0 = new Sprite();
			t_switcher_0.graphics.beginFill(0x33CC00, 0);
			//t_switcher_0.graphics.lineStyle(0, 0x33CC00);
			t_switcher_0.graphics.drawRoundRectComplex(0, 0, 50, 30, 10, 0, 10, 0);
			t_switcher_0.addEventListener(MouseEvent.MOUSE_OVER, over0);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			t_switcher_0.addEventListener(MouseEvent.CLICK, s0_click);
			t_switcher_0.x = 0;
			t_switcher_0.y = 0;
			
			t_switcher_1 = new Sprite();
			t_switcher_1.graphics.beginFill(0x6633FF, 0);
			//t_switcher_1.graphics.lineStyle(0, 0x0099FF);
			t_switcher_1.graphics.drawRoundRectComplex(0, 0, 50, 30, 0 , 0,0,0);
			t_switcher_1.addEventListener(MouseEvent.MOUSE_OVER, over1);
			//t_switcher_1.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			t_switcher_1.addEventListener(MouseEvent.CLICK, s1_click);
			t_switcher_1.x = 50;
			t_switcher_1.y = 0;
			
			t_switcher_2 = new Sprite();
			t_switcher_2.graphics.beginFill(0xFF0000, 0);
			//t_switcher_2.graphics.lineStyle(0, 0xFF3333);
			t_switcher_2.graphics.drawRoundRectComplex(0, 0, 50, 30, 0 , 10, 0, 10);
			t_switcher_2.addEventListener(MouseEvent.MOUSE_OVER, over2);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			t_switcher_2.addEventListener(MouseEvent.CLICK, s2_click);
			t_switcher_2.x = 100;
			t_switcher_2.y = 0;
			
			t_array = new Array();
			t_array[0] = new text(2,5, "оборона", "3");
			t_array[1] = new text(55,5, "баланс", "3");
			t_array[2] = new text(107,5, "атака", "3");
			
			t_pic_array = new Array();
			t_pic_array[0] = new Sprite();
			t_pic_array[0].graphics.beginFill(0xffffff, 1);
			t_pic_array[0].graphics.drawRoundRectComplex(15, 5, 20, 20, 0 , 0, 0, 0);
			//t_pic_array[0].addEventListener(MouseEvent.MOUSE_OVER, over2);
			
			
			t_pic_array[1] = new Sprite();
			t_pic_array[1].graphics.beginFill(0xffffff, 1);
			//t_pic_array[1].graphics.drawRoundRectComplex(55, 5, 20, 20, 0 , 0, 0, 0);
			t_pic_array[1].graphics.drawCircle(75,15, 10);
			
			t_pic_array[2] = new Sprite();
			t_pic_array[2].graphics.beginFill(0xffffff, 1);
			//t_pic_array[2].graphics.drawRoundRectComplex(107, 5, 20, 20, 0 , 0, 0, 0);
			t_pic_array[2].graphics.moveTo(110, 5);
			t_pic_array[2].graphics.lineTo(130, 15);
			t_pic_array[2].graphics.lineTo(110, 25);
			t_pic_array[2].graphics.lineTo(110, 5);
			
			t_bottom_text = new text(90, 110, "?", "autoTeam");
			
			m_switcher_fon = new Sprite();
			m_switcher_fon.graphics.beginFill(0xffffff);
			m_switcher_fon.graphics.lineStyle(2, 0x999999);
			m_switcher_fon.graphics.drawRoundRect(0, 0, 150, 30, 15);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			//t_switcher_fon.addEventListener(MouseEvent.CLICK, fon_click);
			m_switcher_fon.x = 15;
			m_switcher_fon.y = 55;
			
			m_switcher_button = new Sprite();
			m_switcher_button.graphics.beginFill(0x33CC00);
			m_switcher_button.graphics.lineStyle(1, 0x999999);
			m_switcher_button.graphics.drawRoundRect(0, 0, 50, 30, 15);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			m_switcher_button.addEventListener(MouseEvent.CLICK, fon_click);
			m_switcher_button.x = 0;
			m_switcher_button.y = 0;
			
			m_switcher_0 = new Sprite();
			m_switcher_0.graphics.beginFill(0x33CC00, 0);
			m_switcher_0.graphics.lineStyle(0, 0x666666);
			m_switcher_0.graphics.drawRoundRectComplex(0, 0, 50, 30, 10, 0, 10, 0);
			m_switcher_0.addEventListener(MouseEvent.MOUSE_OVER, over0m);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			m_switcher_0.addEventListener(MouseEvent.CLICK, sm0_click);
			m_switcher_0.x = 0;
			m_switcher_0.y = 0;
			
			m_switcher_1 = new Sprite();
			m_switcher_1.graphics.beginFill(0x6633FF, 0);
			m_switcher_1.graphics.lineStyle(0, 0x666666);
			m_switcher_1.graphics.drawRoundRectComplex(0, 0, 50, 30, 0 , 0,0,0);
			m_switcher_1.addEventListener(MouseEvent.MOUSE_OVER, over1m);
			//t_switcher_1.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			m_switcher_1.addEventListener(MouseEvent.CLICK, sm1_click);
			m_switcher_1.x = 50;
			m_switcher_1.y = 0;
			
			m_switcher_2 = new Sprite();
			m_switcher_2.graphics.beginFill(0xFF0000, 0);
			m_switcher_2.graphics.lineStyle(0, 0x666666);
			m_switcher_2.graphics.drawRoundRectComplex(0, 0, 50, 30, 0 , 10, 0, 10);
			m_switcher_2.addEventListener(MouseEvent.MOUSE_OVER, over2m);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			m_switcher_2.addEventListener(MouseEvent.CLICK, sm2_click);
			m_switcher_2.x = 100;
			m_switcher_2.y = 0;
			
			m_array = new Array();
			m_array[0] = new text(2,5, "0", "3");
			m_array[1] = new text(55,5, "1", "3");
			m_array[2] = new text(107,5, "2", "3");
			
			t_switcher_fon.addChild(t_switcher_div0);
			t_switcher_fon.addChild(t_switcher_div1);
			t_switcher_fon.addChild(t_switcher_div2);
			
			//t_switcher_fon.addChild(t_switcher_button);
			t_switcher_fon.addChild(t_pic_array[0]);
			t_switcher_fon.addChild(t_pic_array[1]);
			t_switcher_fon.addChild(t_pic_array[2]);
			
			t_switcher_fon.addChild(t_switcher_0);
			t_switcher_fon.addChild(t_switcher_1);
			t_switcher_fon.addChild(t_switcher_2);
			
			m_switcher_fon.addChild(m_switcher_button);
			m_switcher_fon.addChild(m_array[0]);
			m_switcher_fon.addChild(m_array[1]);
			m_switcher_fon.addChild(m_array[2]);
			
			m_switcher_fon.addChild(m_switcher_0);
			m_switcher_fon.addChild(m_switcher_1);
			m_switcher_fon.addChild(m_switcher_2);
			
			message = new text(85, 10, "	Для успешного старта\n" +
										"мы поможем Вам подобрать" +
										"\nподходящую команду", "autoTeam");
			
			rollingTimer = new Timer(5, 30);
			rollingTimer.addEventListener(TimerEvent.TIMER, rollingTimerEvent);
			rollingTimer.addEventListener(TimerEvent.TIMER_COMPLETE, rollingTimerCompleteEvent);
			
			angle = new int(0);
			dir = new int(1);
			trigger = new int(0);
			t = new int();
			m = new int();
			
			addChild(fon);
			fon.addChild(message);
			
			//rollingTimer.start();
		}
		public function start():void {
			rollingTimer.start();
		}
		private function fon_click(e:MouseEvent):void {
			rollingTimer.start();
		}
		private function s0_click(e:MouseEvent):void {
			rollingTimer.start();
			remove_sw_over_listener();
			t = 0;
		}
		private function s1_click(e:MouseEvent):void {
			rollingTimer.start();
			remove_sw_over_listener();
			t = 1;
		}
		private function s2_click(e:MouseEvent):void {
			rollingTimer.start();
			remove_sw_over_listener();
			t = 2;
		}
		
		private function sm0_click(e:MouseEvent):void {
			rollingTimer.start();
			remove_sw_m_over_listener();
			m = 0;
		}
		private function sm1_click(e:MouseEvent):void {
			rollingTimer.start();
			remove_sw_m_over_listener();
			m = 1;
		}
		private function sm2_click(e:MouseEvent):void {
			rollingTimer.start();
			remove_sw_m_over_listener();
			m = 2;
		}
		private function remove_sw_over_listener():void {
			t_switcher_0.removeEventListener(MouseEvent.MOUSE_OVER, over0);
			t_switcher_1.removeEventListener(MouseEvent.MOUSE_OVER, over1);
			t_switcher_2.removeEventListener(MouseEvent.MOUSE_OVER, over2);
		}
		private function remove_sw_m_over_listener():void {
			m_switcher_0.removeEventListener(MouseEvent.MOUSE_OVER, over0m);
			m_switcher_1.removeEventListener(MouseEvent.MOUSE_OVER, over1m);
			m_switcher_2.removeEventListener(MouseEvent.MOUSE_OVER, over2m);
		}
		private function rollingTimerEvent(e:TimerEvent):void {
			
			//fon.x = 250 + 250*(Math.sin(angle * Math.PI/180));
			fon.x = 640 + (1-dir)*dir*410 - 410*dir*(Math.sin(angle * Math.PI/180));
			
			//angle += 2;
			if(dir == 1) {
				angle += 3;
			}
			if(dir == -1) {
				angle += -3;
				
			}
		}
		private function rollingTimerCompleteEvent(e:TimerEvent):void {
			rollingTimer.reset(); 
			if(dir == 1) {
				dir = -1;
			} else {
				dir = 1;
				rollingTimer.start();
				setNewText();
			}
		}
		private function setNewText():void {
			switch(trigger) {
				case 0:
					message.setText("Какую тактику Вы\n предпочитаете?");
					fon.removeEventListener(MouseEvent.CLICK, fon_click);
					fon.addChild(t_switcher_fon);
					fon.addChild(t_bottom_text);
					break;
				case 1:
					message.setText("Режим набора");
					fon.removeChild(t_switcher_fon);
					fon.removeChild(t_bottom_text);
					fon.addChild(m_switcher_fon);
					
					break;
				case 2:
					message.setText("Любимые клубы");
					fon.removeChild(m_switcher_fon);
					fon.addEventListener(MouseEvent.CLICK, fon_click);
					break;
				case 3:
					message.setText("Вот Ваша личная команда!" + "\nТактика: " + t + "\nРежим: " + m);
					break;
				default:
					message.setText("Желаем удачи в игре!");
					break;	
			}
			trigger += 1;
		}
		private function over0(e:MouseEvent):void {
			//t_switcher_button.x = 0;
			t_switcher_div0.alpha = 0.8;
			t_switcher_div1.alpha = 0.5;
			t_switcher_div2.alpha = 0.5;
			
			t_switcher_div0.filters = [myBevel];
			t_switcher_div1.filters = [];
			t_switcher_div2.filters = [];
			
			t_pic_array[0].filters = [myShadow_i];
			t_pic_array[1].filters = [];
			t_pic_array[2].filters = [];
			
			t_bottom_text.setText("оборонительная");
		}
		private function over1(e:MouseEvent):void {
			//t_switcher_button.x = 50;
			t_switcher_div0.alpha = 0.5;
			t_switcher_div1.alpha = 0.8;
			t_switcher_div2.alpha = 0.5;
			
			t_switcher_div0.filters = [];
			t_switcher_div1.filters = [myBevel];
			t_switcher_div2.filters = [];
			
			t_pic_array[0].filters = [];
			t_pic_array[1].filters = [myShadow_i];
			t_pic_array[2].filters = [];
			
			t_bottom_text.setText("сбалансированная");
		}
		private function over2(e:MouseEvent):void {
			//t_switcher_button.x = 100;
			t_switcher_div0.alpha = 0.5;
			t_switcher_div1.alpha = 0.5;
			t_switcher_div2.alpha = 0.8;
			
			t_switcher_div0.filters = [];
			t_switcher_div1.filters = [];
			t_switcher_div2.filters = [myBevel];
			
			t_pic_array[0].filters = [];
			t_pic_array[1].filters = [];
			t_pic_array[2].filters = [myShadow_i];
			
			t_bottom_text.setText("атакующая");
		}
		private function over0m(e:MouseEvent):void {
			m_switcher_button.x = 0;
		}
		private function over1m(e:MouseEvent):void {
			m_switcher_button.x = 50;
		}
		private function over2m(e:MouseEvent):void {
			m_switcher_button.x = 100;
		}
	}
}