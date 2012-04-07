package data {
	import data.text;
	
	import flash.display.*;
	import flash.events.*;
	import flash.filters.*;
	import flash.geom.Matrix;
	import flash.net.*;
	import flash.utils.Timer;
	
	public class WelcomeMsg extends Sprite {

private var WelcomeMsgSprite:Sprite;	
private var WelcomeMsgText:text;
private var WelcomeMsgFon:Sprite;
private var WelcomeMsgClose:text;
private var WelcomeMsgCloseButton:Sprite;
private var WelcomeMsgFAQ:text;
private var myShadow:DropShadowFilter;
private var myBevel:BevelFilter;
private var myGlow:GlowFilter;
private var showTimer:Timer;
private var buttonTimer:Timer;
private var button_tr:int;

		public function WelcomeMsg() {
			
			myShadow = new DropShadowFilter();
			
			myBevel = new BevelFilter();
			myBevel.angle = 90;
			//myBevel.distance = 7;
			//myBevel.strength = 2;
			myBevel.blurX = 8;
			myBevel.blurY = 8;
			myBevel.shadowAlpha = 0.5;
			myBevel.highlightAlpha = 0.5;
			
			
			myGlow = new GlowFilter();
			myGlow.blurX = 32;
			myGlow.blurY = 0;
			
			showTimer = new Timer(35, 10);
			showTimer.addEventListener(TimerEvent.TIMER, showTimerEvent);
			
			buttonTimer = new Timer(25, 10);
			buttonTimer.addEventListener(TimerEvent.TIMER, buttonTimerEvent);
			
			button_tr = new int();
			//button_tr = 0;
			
			WelcomeMsgSprite = new Sprite();
			WelcomeMsgSprite.x = 30;
			WelcomeMsgSprite.y = 130;
			WelcomeMsgSprite.filters = [myShadow, myBevel];
			WelcomeMsgSprite.alpha = 0;
			
			WelcomeMsgText = new text(8, 6, "error", "welcome");
			
			WelcomeMsgClose = new text(498, 216, "ЗАКРЫТЬ", "welcomeFaq");
			WelcomeMsgClose.addEventListener(MouseEvent.CLICK, WelcomeMsgCloseEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgCloseOverEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgCloseOutEvent);
			
			
			WelcomeMsgFAQ = new text(390, 202, "FAQ", "welcomeFaq");
			WelcomeMsgFAQ.addEventListener(MouseEvent.CLICK, WelcomeMsgFAQEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgFAQOverEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgFAQOutEvent);
			
			//WelcomeMsgFon = new Loader();
			//WelcomeMsgFon.load(new URLRequest("http://woff73.valuehost.ru/woff_images/img5/profile.png"));
			//WelcomeMsgFon.scaleX = 1.45;
			//WelcomeMsgFon.scaleY = 1.4;
			
			var fillType:String = GradientType.RADIAL;
			var colors:Array = [0xffffff, 0xE8E8E8];
			var colors_b:Array = [0xffffff, 0x000000];
			var alphas:Array = [0.6, 1];
			var ratios:Array = [0, 250];
			var ratios_b:Array = [0, 200];
			var matr:Matrix = new Matrix();
			matr.createGradientBox(879, 500, 0, -150, 0);
			var matr_b:Matrix = new Matrix();
			matr_b.createGradientBox(400, 500, 0, 300, 50);
			
			var spreadMethod:String = SpreadMethod.PAD;
			
			
			WelcomeMsgFon = new Sprite();
			WelcomeMsgFon.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod); 
			WelcomeMsgFon.graphics.lineStyle(0, 0x6699CC);
			WelcomeMsgFon.graphics.drawRoundRect(-10, -8, 599, 285, 100);
			//WelcomeMsgFon.filters = [myBevel];
			
			WelcomeMsgCloseButton = new Sprite();
			WelcomeMsgCloseButton.graphics.beginGradientFill(fillType, colors_b, alphas, ratios_b, matr_b, spreadMethod); 
			WelcomeMsgCloseButton.graphics.lineStyle(1, 0x666666);
			//WelcomeMsgCloseButton.graphics.drawRoundRect(450, 215, 100, 30, 32);
			WelcomeMsgCloseButton.graphics.drawRoundRect(450, 215, 100, 30, 32);
			WelcomeMsgCloseButton.alpha = 0;
			WelcomeMsgCloseButton.filters = [myBevel];
			
			addChild(WelcomeMsgSprite);
					WelcomeMsgText.setText("		       Приветствуем Вас в нашей игре!\n" +
						" 	Докажите своим друзьям и всему 'контакту', кто лучше всех\n разбирается в футболе:\n" +
						" * Выберите Российскую Премьер Лигу или любой из ведущих\n европейских турниров!\n"+
						" * Наберите команду из 15 реальных футболистов\n" +
						" * Следите за развитием чемпионатов и набирайте очки\n"+
						" * Не забывайте проводить трансферы по результатам туров\n"+
					" Новичкам рекомендуем начать с раздела ____.\n"+
					" 		Fantasy World for Fantastic Game.");
					
			WelcomeMsgSprite.addChild(WelcomeMsgFon);
			WelcomeMsgSprite.addChild(WelcomeMsgText);	
			WelcomeMsgSprite.addChild(WelcomeMsgFAQ);	
			WelcomeMsgSprite.addChild(WelcomeMsgCloseButton);	
			WelcomeMsgSprite.addChild(WelcomeMsgClose);		
		}
		
	public function WelcomeMsgCloseEvent(e:MouseEvent):void {
		
		removeChild(WelcomeMsgSprite);
	}
	
	public function WelcomeMsgFAQEvent(e:MouseEvent):void {
		navigateToURL(new URLRequest("http://vkontakte.ru/pages.php?o=-16470824&p=FAQ"), "_blank");
		
	}
	public function WelcomeMsgFAQOverEvent(e:MouseEvent):void {
		WelcomeMsgFAQ.setColor("0x006699");
	}
	public function WelcomeMsgFAQOutEvent(e:MouseEvent):void {
		WelcomeMsgFAQ.setColor("0x003366");
	}
	
	public function WelcomeMsgCloseOverEvent(e:MouseEvent):void {
		WelcomeMsgClose.setColor("0x006699");
	
		buttonTimer.stop();
		button_tr = 10;
		buttonTimer.reset();
		buttonTimer.start();
		//WelcomeMsgCloseButton.alpha = 0.8;
		
	}
	public function WelcomeMsgCloseOutEvent(e:MouseEvent):void {
		WelcomeMsgClose.setColor("0x003366");
		
		buttonTimer.stop();
		button_tr = -10;
		buttonTimer.reset();
		buttonTimer.start();
		
			
	}
	
	public function showTimerEvent(e:TimerEvent):void {
		WelcomeMsgSprite.alpha += 0.1;
	}
	
	public function buttonTimerEvent(e:TimerEvent):void {
		WelcomeMsgCloseButton.alpha += button_tr/100;
	}
	
	
	public function showWelcome():void {
		showTimer.start();
	}
	
	}
	
}