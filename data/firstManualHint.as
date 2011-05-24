package data {
	import data.text;
	
	import flash.display.*;
	import flash.events.*;
	import flash.filters.BevelFilter;
	import flash.filters.DropShadowFilter;
	import flash.net.*;
	import flash.utils.Timer;
	import flash.geom.Matrix;
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
			//myBevel.blurY = 16;
			
			myTimer = new Timer(20, 50);
			myTimer.addEventListener(TimerEvent.TIMER, timerEvent);
			
			WelcomeMsgSprite = new Sprite();
			WelcomeMsgSprite.x = 50;
			WelcomeMsgSprite.y = 170;
			WelcomeMsgSprite.filters = [myBevel];
			WelcomeMsgSprite.alpha = 0;
			
			WelcomeMsgText = new text(5, 6, "error", "first_hint");
			
			WelcomeMsgClose = new text(380, 110, " < ЗАКРЫТЬ >", "first_hint");
			WelcomeMsgClose.addEventListener(MouseEvent.CLICK, WelcomeMsgCloseEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgCloseOverEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgCloseOutEvent);
			
			WelcomeMsgFAQ = new text(102, 110, "группа приложения", "first_hint");
			WelcomeMsgFAQ.setColor("0x000033");
			WelcomeMsgFAQ.addEventListener(MouseEvent.CLICK, WelcomeMsgFAQEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgFAQOverEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgFAQOutEvent);
			
			var fillType:String = GradientType.LINEAR;
			var colors:Array = [0x999999, 0xFFFFFF];
			var alphas:Array = [1, 0.9];
			var ratios:Array = [0, 200];
			var matr:Matrix = new Matrix();
				matr.createGradientBox(500, 150, (Math.PI/180)*90, 0, 0);
			//matr.cr
			
			var spreadMethod:String = SpreadMethod.PAD;
			
		
			WelcomeMsgFon = new Sprite();
			WelcomeMsgFon.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod); 
			
			//WelcomeMsgFon.graphics.beginFill(0x3366FF,1);
			WelcomeMsgFon.graphics.lineStyle(0, 0x6699CC);
			WelcomeMsgFon.graphics.drawRoundRect(0, 0, 565, 160, 30);
			//window_block0.graphics.drawRoundRectComplex(0, 240, 145, 55, 0, 0 , 15, 48);
			//WelcomeMsgFon.alpha = 0.7;
			//window_block0.filters = [myBevel];
			
			//WelcomeMsgFon = new Loader();
			//WelcomeMsgFon.load(new URLRequest("http://woff73.valuehost.ru/woff_images/img5/profile.png"));
			//WelcomeMsgFon.scaleX = 1.4;
			//WelcomeMsgFon.scaleY = 0.83;
		
			addChild(WelcomeMsgSprite);
					WelcomeMsgText.setText("	" +
					" Для начала Вам необходимо собрать команду из 15\n футболистов! Нажимайте на стрелочки рядом с серыми\n футболками и выбирайте игроков соответствующего\n амплуа."+
					//"\n- В закладке 'главная' Вы можете ввести название своей команды и выбрать любимый футбольный клуб." +
					//"\n- Возможно у Вас есть заносчивые друзья, которые считают что разбираются в футболе лучше чем Вы! \n	Пригласите их в игру из вкладки 'Лига друзей' и докажите что они жестоко ошибаются."+
					//"\n- Ну и наконец самое приятное - следите за реальным развитием турниров. \n	Проводите замены в вашей команде, принимайте учатие в обсуждениях в     \n и общайтесь с другими игроками."+
					"\n"+
					"\n");
					
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
		WelcomeMsgFAQ.setColor("0x0389af");
	}
	public function WelcomeMsgFAQOutEvent(e:MouseEvent):void {
		WelcomeMsgFAQ.setColor("0x000033");
	}
	public function WelcomeMsgCloseOverEvent(e:MouseEvent):void {
		WelcomeMsgClose.setColor("0x0389af");
	}
	public function WelcomeMsgCloseOutEvent(e:MouseEvent):void {
		WelcomeMsgClose.setColor("0x333366");
	}
	
	public function showMan():void {
		myTimer.start();
	}
	private function timerEvent(e:TimerEvent):void {
		WelcomeMsgSprite.alpha += 0.07;
	}
	}
	
}