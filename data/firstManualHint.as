package data {
	import data.text;
	
	import flash.display.*;
	import flash.events.*;
	import flash.filters.BevelFilter;
	import flash.filters.DropShadowFilter;
	import flash.geom.Matrix;
	import flash.net.*;
	import flash.utils.Timer;
	
	import org.osmf.events.TimeEvent;

	public class firstManualHint extends Sprite {

private var WelcomeMsgSprite:Sprite;	
private var WelcomeMsgText:text;
private var WelcomeMsgFon:Sprite;
private var WelcomeMsgClose:text;
private var WelcomeMsgFAQ:text;
private var myShadow:DropShadowFilter;
private var myBevel:BevelFilter;
private var myTimer:Timer;


		public function firstManualHint () {
			
			myShadow = new DropShadowFilter();
			
			myBevel = new BevelFilter();
			myBevel.angle = 90;
			myBevel.strength = 0.5;
			//myBevel.blurY = 16;
			
			myTimer = new Timer(20, 50);
			myTimer.addEventListener(TimerEvent.TIMER, timerEvent);
			
			WelcomeMsgSprite = new Sprite();
			WelcomeMsgSprite.x = 50;
			WelcomeMsgSprite.y = 170;
			//WelcomeMsgSprite.filters = [myBevel];
			WelcomeMsgSprite.alpha = 0;
			
			var WelcomeMsgBackground:Loader = new Loader();
			WelcomeMsgBackground.load(new URLRequest("http://dl.dropbox.com/u/6044249/football_girls_team2_widescreen_small.jpg"));
			WelcomeMsgBackground.x = -18;
			WelcomeMsgBackground.y = -110;
			
			WelcomeMsgText = new text(5, 26, "error", "first_hint");
			
			WelcomeMsgClose = new text(380, 130, " ЗАКРЫТЬ", "first_hint");
			WelcomeMsgClose.addEventListener(MouseEvent.CLICK, WelcomeMsgCloseEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgCloseOverEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgCloseOutEvent);
			//WelcomeMsgClose.buttonMode = true;
			//WelcomeMsgClose.useHandCursor = true;
			
			WelcomeMsgFAQ = new text(80, 130, "группа приложения", "first_hint");
			WelcomeMsgFAQ.setColor("0x000033");
			WelcomeMsgFAQ.addEventListener(MouseEvent.CLICK, WelcomeMsgFAQEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgFAQOverEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgFAQOutEvent);
			
			var fillType:String = GradientType.RADIAL;
			var colors:Array = [0xffffff, 0xE8E8E8];
			var alphas:Array = [0.7, 1];
			var ratios:Array = [0, 250];
			var matr:Matrix = new Matrix();
				matr.createGradientBox(565, 300, 0, 0, 30);
			
			var spreadMethod:String = SpreadMethod.PAD;
			
		
			WelcomeMsgFon = new Sprite();
			WelcomeMsgFon.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod); 
			WelcomeMsgFon.graphics.lineStyle(1, 0x333333);
			WelcomeMsgFon.graphics.drawRoundRect(0, 20, 565, 160, 40);
			WelcomeMsgFon.filters = [myBevel];
			
			addChild(WelcomeMsgSprite);
					WelcomeMsgText.setText("	" +
					" Для начала Вам необходимо собрать команду из 15\n футболистов! Нажимайте на стрелочки рядом с серыми\n футболками и выбирайте игроков соответствующего\n амплуа."+
					//"\n- В закладке 'главная' Вы можете ввести название своей команды и выбрать любимый футбольный клуб." +
					//"\n- Возможно у Вас есть заносчивые друзья, которые считают что разбираются в футболе лучше чем Вы! \n	Пригласите их в игру из вкладки 'Лига друзей' и докажите что они жестоко ошибаются."+
					//"\n- Ну и наконец самое приятное - следите за реальным развитием турниров. \n	Проводите замены в вашей команде, принимайте учатие в обсуждениях в     \n и общайтесь с другими игроками."+
					"\n"+
					"\n");
					
			WelcomeMsgSprite.addChild(WelcomeMsgBackground);		
			WelcomeMsgSprite.addChild(WelcomeMsgFon);
			WelcomeMsgSprite.addChild(WelcomeMsgText);	
			WelcomeMsgSprite.addChild(WelcomeMsgFAQ);		
			WelcomeMsgSprite.addChild(WelcomeMsgClose);		
		}
		
	public function WelcomeMsgCloseEvent(e:MouseEvent):void {
		
		removeChild(WelcomeMsgSprite);
	}
	
	public function WelcomeMsgFAQEvent(e:MouseEvent):void {
		navigateToURL(new URLRequest("http://vkontakte.ru/club16470824"), "_blank");
		
	}
	public function WelcomeMsgFAQOverEvent(e:MouseEvent):void {
		WelcomeMsgFAQ.setColor("0x006699");
	}
	public function WelcomeMsgFAQOutEvent(e:MouseEvent):void {
		WelcomeMsgFAQ.setColor("0x003366");
	}
	public function WelcomeMsgCloseOverEvent(e:MouseEvent):void {
		WelcomeMsgClose.setColor("0x006699");
	}
	public function WelcomeMsgCloseOutEvent(e:MouseEvent):void {
		WelcomeMsgClose.setColor("0x003366");
	}
	
	public function showMan():void {
		myTimer.start();
	}
	private function timerEvent(e:TimerEvent):void {
		WelcomeMsgSprite.alpha += 0.07;
	}
	}
	
}