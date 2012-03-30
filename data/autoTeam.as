package data{
	import data.autoTeamClubs;
	import data.autoTeamMan;
	import data.text;
	
	import flash.display.*;
	import flash.events.*;
	import flash.filters.BevelFilter;
	import flash.filters.DropShadowFilter;
	import flash.filters.GlowFilter;
	import flash.net.*;
	import flash.utils.Timer;
	//import flash.net.URLRequest;
	//import flash.net.URLVariables;
	
	public class autoTeam extends Sprite {
		
		private var rollingTimer:Timer;
		private var angle:int;
		public var fon:Sprite;
		private var fon_clubs:Sprite;
		public var fon_team:Sprite;
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
		private var myGlow:GlowFilter;
		private var t_bottom_text:text;
		private var f_switcher_fon:Sprite;
		private var f_clubs:Array;
		private var f_clubs_last:Array;
		private var new_team_fon:Sprite;
		private var next_fon:Sprite;
		private var buy_fon:Sprite;
		private var next_button:Sprite;
		private var next_text:text;
		//private var f_clubs_dev:Array;
		private var team_table:Array;
		public var auto_team_last:Array;
		private var current_champ:int;
		
		public function autoTeam() {
			
			myShadow_i = new DropShadowFilter();
			myShadow_i.inner = true;
			myShadow_i.distance = 1;
			
			myBevel = new BevelFilter();
			myBevel.strength = 0.5;
			myBevel.angle = 90;
			
			myGlow = new GlowFilter();
			myGlow.inner = true;
			myGlow.color = 0x99CCFF;
			myGlow.strength = 3;
			myGlow.blurX = 0;
			myGlow.blurY = 16;
			
			fon = new Sprite();
			fon.graphics.beginFill(0x666666);
			//fon.graphics.lineStyle(0, 0x999999);
			fon.graphics.drawRoundRect(-40, 0, 260, 150, 55);
			//fon.addEventListener(MouseEvent.CLICK, fon_click);
			fon.x = 680;
			fon.y = 140;
			
			fon_clubs = new Sprite();
			fon_clubs.graphics.beginFill(0x666666);
			//fon.graphics.lineStyle(0, 0x999999);
			fon_clubs.graphics.drawRoundRect(-110, 0, 400, 285, 55);
			//fon_clubs.addEventListener(MouseEvent.CLICK, fon_click);
			//fon_clubs.x = 680;
			//fon_clubs.y = 200;
			
			fon_team = new Sprite();
			fon_team.graphics.beginFill(0x666666);
			fon_team.graphics.drawRoundRect(-95, -10, 370, 320, 55);
			//fon_team.addEventListener(MouseEvent.CLICK, fon_click);
			
			
			buy_fon = new Sprite();
			buy_fon.graphics.beginFill(0x999999);
			buy_fon.graphics.drawRoundRect(0, 0, 100, 30, 30);
			//buy_fon.addEventListener(MouseEvent.CLICK, fon_click);
			//buy_fon.addEventListener(MouseEvent.MOUSE_OVER, next_over);
			//buy_fon.addEventListener(MouseEvent.MOUSE_OUT, next_out);
			buy_fon.x = 50;
			buy_fon.y = 275;
			buy_fon.filters = [myShadow_i];
			
			fon_team.addChild(buy_fon);
			
			next_fon = new Sprite();
			next_fon.graphics.beginFill(0x999999);
			next_fon.graphics.drawRoundRect(0, 0, 100, 30, 30);
			next_fon.addEventListener(MouseEvent.CLICK, fon_click);
			next_fon.addEventListener(MouseEvent.MOUSE_OVER, next_over);
			next_fon.addEventListener(MouseEvent.MOUSE_OUT, next_out);
			next_fon.x = 35;
			next_fon.y = 100;
			next_fon.filters = [myShadow_i];
			
			next_button = new Sprite();
			next_button.graphics.beginFill(0x0099FF);
			next_button.graphics.drawRoundRect(8, 5, 84, 20, 20);
			//next_fon.addEventListener(MouseEvent.CLICK, fon_click);
			next_button.filters = [myBevel];
			
			next_text = new text(48, 1, "поехали", "autoTeam");
			 
			t_switcher_fon = new Sprite();
			t_switcher_fon.graphics.beginFill(0xCCCCCC);
			t_switcher_fon.graphics.lineStyle(3, 0xCCCCCC);
			t_switcher_fon.graphics.drawRoundRect(-6, -6, 160, 40, 26);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			//t_switcher_fon.addEventListener(MouseEvent.CLICK, fon_click);
			t_switcher_fon.x = 15;
			t_switcher_fon.y = 65;
			t_switcher_fon.filters = [myShadow_i];
			
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
			t_pic_array[0].graphics.drawRoundRectComplex(15, 5, 20, 20, 3 , 3, 3, 3);
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
			m_switcher_fon.graphics.beginFill(0xCCCCCC);
			m_switcher_fon.graphics.lineStyle(1, 0x999999);
			m_switcher_fon.graphics.drawRoundRect(-5, -5, 160, 40, 40);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			//t_switcher_fon.addEventListener(MouseEvent.CLICK, fon_click);
			m_switcher_fon.filters = [myShadow_i];
			m_switcher_fon.x = 15;
			m_switcher_fon.y = 55;
			
			m_switcher_button = new Sprite();
			m_switcher_button.graphics.beginFill(0x0099FF);
			m_switcher_button.graphics.lineStyle(0, 0x999999);
			m_switcher_button.graphics.drawRoundRect(0, 0, 75, 30, 25);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			m_switcher_button.addEventListener(MouseEvent.CLICK, fon_click);
			m_switcher_button.filters = [myBevel];
			m_switcher_button.x = 0;
			m_switcher_button.y = 0;
			
			m_switcher_0 = new Sprite();
			m_switcher_0.graphics.beginFill(0x33CC00, 0);
			m_switcher_0.graphics.lineStyle(0, 0x999999);
			m_switcher_0.graphics.drawRoundRectComplex(0, 0, 75, 30, 25, 0, 25, 0);
			m_switcher_0.addEventListener(MouseEvent.MOUSE_OVER, over0m);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			m_switcher_0.addEventListener(MouseEvent.CLICK, sm0_click);
			m_switcher_0.x = 0;
			m_switcher_0.y = 0;
			
			m_switcher_1 = new Sprite();
			//m_switcher_1.graphics.beginFill(0x6633FF, 0);
			//m_switcher_1.graphics.lineStyle(0, 0x666666);
			//m_switcher_1.graphics.drawRoundRectComplex(0, 0, 50, 30, 0 , 0,0,0);
			//m_switcher_1.addEventListener(MouseEvent.MOUSE_OVER, over1m);
			//t_switcher_1.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			//m_switcher_1.addEventListener(MouseEvent.CLICK, sm1_click);
			//m_switcher_1.x = 50;
			//m_switcher_1.y = 0;
			
			m_switcher_2 = new Sprite();
			m_switcher_2.graphics.beginFill(0xFF0000, 0);
			m_switcher_2.graphics.lineStyle(0, 0x999999);
			m_switcher_2.graphics.drawRoundRectComplex(0, 0, 75, 30, 0 , 25, 0, 25);
			m_switcher_2.addEventListener(MouseEvent.MOUSE_OVER, over2m);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			m_switcher_2.addEventListener(MouseEvent.CLICK, sm2_click);
			m_switcher_2.x = 75;
			m_switcher_2.y = 0;
			
			m_array = new Array();
			m_array[0] = new text(2,5, "", "3");
			m_array[1] = new text(55,5, "", "3");
			m_array[2] = new text(107,5, "", "3");
			
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
			//m_switcher_fon.addChild(m_switcher_1);
			m_switcher_fon.addChild(m_switcher_2);
			
			// выбор любимых клубов
			f_switcher_fon = new Sprite();
			f_switcher_fon.graphics.beginFill(0xCCCCCC);
			f_switcher_fon.graphics.lineStyle(3, 0xCCCCCC);
			f_switcher_fon.graphics.drawRoundRect(0, 0, 370, 170, 20);
			//dropdowmmenu_png.addEventListener(MouseEvent.MOUSE_OUT, dropdowm_menu_out);
			//t_switcher_fon.addEventListener(MouseEvent.CLICK, fon_click);
			f_switcher_fon.x = -95;
			f_switcher_fon.y = 64;
			f_switcher_fon.filters = [myShadow_i];
			
			f_clubs = new Array();
			f_clubs_last = new Array();
			
			
			
			message = new text(85, 10, "   Для успешного старта\n" +
										"мы поможем Вам подобрать" +
										"\n подходящую команду!" +
										"" +
										"", "autoTeam");
			
			rollingTimer = new Timer(5, 30);
			rollingTimer.addEventListener(TimerEvent.TIMER, rollingTimerEvent);
			rollingTimer.addEventListener(TimerEvent.TIMER_COMPLETE, rollingTimerCompleteEvent);
			
			angle = new int(0);
			dir = new int(1);
			trigger = new int(0);
			t = new int();
			m = new int();
			current_champ = new int(0);
			
			addChild(fon);
			fon.addChild(message);
			fon.addChild(next_fon);
				next_fon.addChild(next_button);
				next_fon.addChild(next_text);
			
			new_team_fon = new Sprite();
			new_team_fon.graphics.beginFill(0xCCCCCC);
			new_team_fon.graphics.lineStyle(3, 0xCCCCCC);
			new_team_fon.graphics.drawRoundRect(0, 0, 340, 270, 20);
			new_team_fon.x = -80;
			new_team_fon.y = 0;
			new_team_fon.filters = [myShadow_i];
			
			team_table = new Array();
			auto_team_last = new Array();
			
			for (var row:int=0; row < 15; row++) {
				team_table[row] = new autoTeamMan("" + row );
				team_table[row].x = 38;
				team_table[row].y = row * 17 + 10;
				
				new_team_fon.addChild(team_table[row]);
			}
		}
		
		public function start():void {
			rollingTimer.start();
		}
		private function fon_click(e:MouseEvent):void {
			rollingTimer.start();
		}
		
		private function getTeam():void {
			var request = new URLRequest("http://62.76.177.54/dev_api.php?method=getAutoTeam&fc[]="+f_clubs_last.toString()+"&t="+t+"&tm="+current_champ+"&m="+m);
				//request.method = URLRequestMethod.POST;
  				//request.data = new URLVariables();
  			
  			//var params:Object = {method: "getAutoTeam", fc%5B%5D:f_clubs_last.toString(), t: t, m:m, tm:"5"};
			
			/*
			for (var k:String in params)
					request.data[k] = params[k];
					
  			 
  			var v:URLVariables = new URLVariables();
  			v.method = "getAutoTeam";
			//v.v = "2.0"; // Версия АПИ
			v.fc%5b%5d = f_clubs_last.toString();
			v.uid = 64416;
			v.t = t;
			v.m = m;
			//v.p = p;
			 
   				//request.data = v;
          */
			
			
			var loader:URLLoader = new URLLoader();
			loader.addEventListener(Event.COMPLETE, getTeamComplete);
			loader.load(request);
			
		}
		
		private function getTeamComplete(e:Event):void {
			var answer:XML = new XML(e.target.data);
			//team_table[0].setClubTitle(answer);
			
			for (var man:int=0; man < answer.info.footballer.length(); man++) {
				//team_table[man].setClubTitle(answer.info.footballer[man].number.text()+ " 	"+answer.info.footballer[man].name.text() + " 	"+ answer.info.footballer[man].club_title.text());
				team_table[man].setName(answer.info.footballer[man].name.text(), answer.info.footballer[man].club_title.text(), answer.info.footballer[man].number.text(), answer.info.footballer[man].id.text());
				
				// добавляем в массив ВСЕХ предложенных игроков
				//auto_team_last.push(answer.info.footballer[man].id.text());
				auto_team_last.push({id:answer.info.footballer[man].id.text(), 
								status:answer.info.footballer[man].status.text()});
			}
			
			
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
			fon.x = 730 + (1-dir)*dir*500 - 500*dir*(Math.sin(angle * Math.PI/180));
			
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
					//fon.removeEventListener(MouseEvent.CLICK, fon_click);
					fon.removeChild(next_fon);
					fon.addChild(t_switcher_fon);
					fon.addChild(t_bottom_text);
					break;
				case 1:
					message.setText("Выберите режим набора");
					fon.removeChild(t_switcher_fon);
					//fon.removeChild(t_bottom_text);
					t_bottom_text.setText("?");
					fon.addChild(m_switcher_fon);
					
					break;
				case 2:
					message.setText("Какие клубы Вы считаете\n	фаворитами турнира?");
					fon.removeChild(m_switcher_fon);
					fon.removeChild(t_bottom_text);
					//fon.width = 400;
					//fon.height = 400;
						//fon.scaleX = 2;
						//fon.scaleY = 2;
					fon.addChild(fon_clubs);
					fon.addChild(message);
					fon.addChild(f_switcher_fon);
					fon.addChild(next_fon);
					next_fon.y = 245;
					next_text.setText("готово");
					break;
				case 3:
					fon.removeChild(next_fon);
					fon.removeChild(f_switcher_fon);
					fon.removeChild(fon_clubs);
					//fon.addEventListener(MouseEvent.CLICK, fon_click);
					getFavClubs();
					getTeam();
					//message.setText("Вот Ваша личная команда!" + "\nТактика: " + t + "\nРежим: " + m + "\nФавориты: " + f_clubs_last.toString());
					fon.addChild(fon_team);
					fon.addChild(new_team_fon);
					
					break;
				default:
					//message.setText("Желаем удачи в игре!");
					removeChild(fon);
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
			
			t_bottom_text.setText("15 равносильных");
		}
		private function over1m(e:MouseEvent):void {
			//m_switcher_button.x = 50;
			
			//t_bottom_text.setText("?");
		}
		private function over2m(e:MouseEvent):void {
			m_switcher_button.x = 75;
			
			t_bottom_text.setText("11 сильных и 4 слабых");
		}
		
		/*
		private function club_fon_click(e:MouseEvent):void {
			if (e.currentTarget.filters == "[object GlowFilter]") {
				e.currentTarget.filters = [];
			} else {
				e.currentTarget.filters = [myGlow];
				//f_clubs[0].setText(e.currentTarget.filters);
				message.setText(e.currentTarget.f_clubs.text2);
			}
		}
		 * 
		 */
		 
		public function setFavClubs(clubs_array:Array): void {
			
			// rows
			for (var i:int=0; i < (clubs_array.length-1)/4; i++) {
			//for (var i:int=0; i < 8; i++) {
				//columns
				for (var ii:int=0; ii < 4; ii++) {
					if (clubs_array[i+1].title != "") {
						f_clubs[int(i*4+ii)] = new autoTeamClubs();
						f_clubs[int(i*4+ii)].x = 90*ii + 5;
						f_clubs[int(i*4+ii)].y = 21*i + 5;
						
						f_switcher_fon.addChild(f_clubs[int(i*4+ii)]);
					}
				}
			}
			//---------------------------------------------------------
			for (var lol:int=0; lol < clubs_array.length; lol++) {
								
					f_clubs[lol].setClubTitle(clubs_array[lol+1].title);
					f_clubs[lol].setClubId(clubs_array[lol+1].id);
			}
		}
		
		private function getFavClubs():void {
			for (var n:int=0; n < f_clubs.length; n++) {
				if (f_clubs[n].pressed == 1) {
					f_clubs_last.push(f_clubs[n].getId());
				}
			}
			
		}
		private function next_over(e:MouseEvent):void {
			//next_fon.filters = [myShadow_i, myGlow];
			next_button.filters = [myBevel, myGlow];
		}
		private function next_out(e:MouseEvent):void {
			//next_fon.filters = [myShadow_i];
			next_button.filters = [myBevel];
		}
		public function getAutoTeam():Array {
			return auto_team_last;
		}
		public function setChamp(new_champ:int):void {
			current_champ = new_champ;
		}
	}
}