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
private var WelcomeMsgFAQ:text;
private var myShadow:DropShadowFilter;
private var myBevel:BevelFilter;
private var showTimer:Timer;

		public function WelcomeMsg() {
			
			myShadow = new DropShadowFilter();
			
			myBevel = new BevelFilter();
			myBevel.angle = 90;
			
			showTimer = new Timer(35, 25);
			showTimer.addEventListener(TimerEvent.TIMER, showTimerEvent);
			
			WelcomeMsgSprite = new Sprite();
			WelcomeMsgSprite.x = 20;
			WelcomeMsgSprite.y = 130;
			WelcomeMsgSprite.filters = [myShadow];
			WelcomeMsgSprite.alpha = 0;
			
			WelcomeMsgText = new text(8, 6, "error", "welcome");
			
			WelcomeMsgClose = new text(448, 206, "ЗАКРЫТЬ", "welcomeFaq");
			WelcomeMsgClose.addEventListener(MouseEvent.CLICK, WelcomeMsgCloseEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgCloseOverEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgCloseOutEvent);
			
			
			WelcomeMsgFAQ = new text(119, 152, "FAQ", "welcomeFaq");
			WelcomeMsgFAQ.addEventListener(MouseEvent.CLICK, WelcomeMsgFAQEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgFAQOverEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgFAQOutEvent);
			
			//WelcomeMsgFon = new Loader();
			//WelcomeMsgFon.load(new URLRequest("http://woff73.valuehost.ru/woff_images/img5/profile.png"));
			//WelcomeMsgFon.scaleX = 1.45;
			//WelcomeMsgFon.scaleY = 1.4;
			
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
			WelcomeMsgFon.graphics.drawRoundRect(0, -5, 579, 250, 40);
			//window_block0.graphics.drawRoundRectComplex(0, 240, 145, 55, 0, 0 , 15, 48);
			//WelcomeMsgFon.alpha = 0.7;
			WelcomeMsgFon.filters = [myBevel];
			
			addChild(WelcomeMsgSprite);
					WelcomeMsgText.setText("		--- Приветствуем Вас в нашей игре! ---" +
					"\n Здесь Вы сможете доказать своим друзьям и всему 'контакту',\n кто лучше всех разбирается в футболе."+
					" Набирайте команду из 15\n реальных футболистов и в бой! Мы предлагаем вам целый МИР\n Fantasy Football." +
					" Заявляйте команды в ведущих европейских\n турнирах и Российской Премьер Лиге. "+
					" Рекомендумаем начать\n с раздела ____."+
					" Мы верим что"+
					" игра и сам 'МИР' Fantasy Football\n в целом придутся Вам по душе, не даром мы выбрали девиз\n 'Fantasy World for Fantastic Game'.");
					
			WelcomeMsgSprite.addChild(WelcomeMsgFon);
			WelcomeMsgSprite.addChild(WelcomeMsgText);	
			WelcomeMsgSprite.addChild(WelcomeMsgFAQ);		
			WelcomeMsgSprite.addChild(WelcomeMsgClose);		
		}
		
	public function WelcomeMsgCloseEvent(e:MouseEvent):void {
		
		removeChild(WelcomeMsgSprite);
	}
	
	public function WelcomeMsgFAQEvent(e:MouseEvent):void {
		navigateToURL(new URLRequest("http://vkontakte.ru/pages.php?o=-16470824&p=FAQ"), "_blank");
		
	}
	public function WelcomeMsgFAQOverEvent(e:MouseEvent):void {
		WelcomeMsgFAQ.setColor("0x0389af");
	}
	public function WelcomeMsgFAQOutEvent(e:MouseEvent):void {
		WelcomeMsgFAQ.setColor("0x666666");
	}
	
	public function WelcomeMsgCloseOverEvent(e:MouseEvent):void {
		WelcomeMsgClose.setColor("0x0389af");
	}
	public function WelcomeMsgCloseOutEvent(e:MouseEvent):void {
		WelcomeMsgClose.setColor("0x666666");
	}
	
	public function showTimerEvent(e:TimerEvent):void {
		WelcomeMsgSprite.alpha += 0.05;
	}
	
	public function showWelcome():void {
		showTimer.start();
	}
	
	}
	
}