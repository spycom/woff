package data {
	import data.panel;
	import data.text;
	import data.autoTeam;
	
	import flash.display.*;
	import flash.events.*;
	import flash.filters.BevelFilter;
	import flash.filters.DropShadowFilter;
	import flash.geom.Matrix;
	import flash.net.*;
	import flash.utils.Timer;
	
	//import org.osmf.events.TimeEvent;

	public class firstManualHint extends Sprite {

private var WelcomeMsgSprite:Sprite;	
private var WelcomeMsgText:text;
private var WelcomeMsgFon:Sprite;
private var WelcomeMsgButtonSprite:Sprite;
private var WelcomeMsgButton2Sprite:Sprite;
private var WelcomeMsgButton3Sprite:Sprite;
private var WelcomeMsgClose:text;
private var WelcomeMsgFAQ:text;
private var WelcomeMsgAuto:text;
private var myShadow:DropShadowFilter;
private var myBevel:BevelFilter;
private var myTimer:Timer;
private var leftPanel:panel;
private var autoTeamHelper:autoTeam;

		public function firstManualHint () {
			
			myShadow = new DropShadowFilter();
			myShadow.inner = true;
			myShadow.distance = 2;
			
			myBevel = new BevelFilter();
			myBevel.angle = 90;
			myBevel.strength = 0.5;
			myBevel.blurY = 30;
			myBevel.distance = 15;
			
			
			myTimer = new Timer(20, 50);
			myTimer.addEventListener(TimerEvent.TIMER, timerEvent);
			
			WelcomeMsgSprite = new Sprite();
			WelcomeMsgSprite.x = 40;
			WelcomeMsgSprite.y = 170;
			//WelcomeMsgSprite.filters = [myBevel];
			WelcomeMsgSprite.alpha = 0;
			
			var WelcomeMsgBackground:Loader = new Loader();
			WelcomeMsgBackground.load(new URLRequest("http://62.76.177.54/woff_images/tits.jpg"));
			WelcomeMsgBackground.x = -18;
			WelcomeMsgBackground.y = -110;
			
			WelcomeMsgText = new text(5, 26, "error", "first_hint");
			
			WelcomeMsgClose = new text(420, 129, "закрыть", "first_hint");
			WelcomeMsgClose.addEventListener(MouseEvent.CLICK, WelcomeMsgCloseEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgCloseOverEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgCloseOutEvent);
			
			WelcomeMsgFAQ = new text(50, 129, "группа", "first_hint");
			WelcomeMsgFAQ.addEventListener(MouseEvent.CLICK, WelcomeMsgFAQEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgFAQOverEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgFAQOutEvent);
			
			WelcomeMsgAuto = new text(220, 129, "автонабор", "first_hint");
			WelcomeMsgAuto.addEventListener(MouseEvent.CLICK, WelcomeMsgAutoEvent);
			WelcomeMsgAuto.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgAutoOverEvent);
			WelcomeMsgAuto.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgAutoOutEvent);
			
			var fillType:String = GradientType.RADIAL;
			var colors:Array = [0xffffff, 0xE8E8E8];
			var alphas:Array = [0.75, 1];
			var ratios:Array = [0, 250];
			var matr:Matrix = new Matrix();
				matr.createGradientBox(565, 300, 0, 0, 30);
			
			var spreadMethod:String = SpreadMethod.PAD;
			
		
			WelcomeMsgFon = new Sprite();
			WelcomeMsgFon.graphics.beginGradientFill(fillType, colors, alphas, ratios, matr, spreadMethod); 
			WelcomeMsgFon.graphics.lineStyle(2, 0x999999);
			WelcomeMsgFon.graphics.drawRoundRect(0, 20, 565, 160, 50);
			WelcomeMsgFon.filters = [myBevel, myShadow];
			
			WelcomeMsgButtonSprite = new Sprite();
			WelcomeMsgButtonSprite.graphics.beginFill(0x999999, 1);
			WelcomeMsgButtonSprite.graphics.lineStyle(2, 0x999999);
			WelcomeMsgButtonSprite.graphics.drawRoundRect(25, 132, 120, 28, 30);
			WelcomeMsgButtonSprite.filters = [myBevel, myShadow];
			WelcomeMsgButtonSprite.alpha = 0.2;
			
			WelcomeMsgButton2Sprite = new Sprite();
			
			WelcomeMsgButton2Sprite.graphics.beginFill(0x999999, 1);
			WelcomeMsgButton2Sprite.graphics.lineStyle(2, 0x999999);
			WelcomeMsgButton2Sprite.graphics.drawRoundRect(400, 132, 120, 28, 30);
			WelcomeMsgButton2Sprite.filters = [myBevel, myShadow];
			WelcomeMsgButton2Sprite.alpha = 0.2;
			
			WelcomeMsgButton3Sprite = new Sprite();
			
			WelcomeMsgButton3Sprite.graphics.beginFill(0x999999, 1);
			WelcomeMsgButton3Sprite.graphics.lineStyle(2, 0x999999);
			WelcomeMsgButton3Sprite.graphics.drawRoundRect(200, 132, 150, 28, 30);
			WelcomeMsgButton3Sprite.filters = [myBevel, myShadow];
			WelcomeMsgButton3Sprite.alpha = 0.2;
			
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
			WelcomeMsgSprite.addChild(WelcomeMsgButtonSprite);
			WelcomeMsgSprite.addChild(WelcomeMsgButton2Sprite);
			//WelcomeMsgSprite.addChild(WelcomeMsgButton3Sprite);
			WelcomeMsgSprite.addChild(WelcomeMsgFAQ);		
			WelcomeMsgSprite.addChild(WelcomeMsgClose);		
			//WelcomeMsgSprite.addChild(WelcomeMsgAuto);	
			
			leftPanel = new panel();
			leftPanel.addEventListener(MouseEvent.CLICK, leftPanelClick);
			addChild(leftPanel);
			
			autoTeamHelper = new autoTeam();
			addChild(autoTeamHelper);
		}
		
	public function WelcomeMsgCloseEvent(e:MouseEvent):void {
		
		removeChild(WelcomeMsgSprite);
		leftPanel.panelShow();
	}
	private function leftPanelClick(e:MouseEvent):void {
		leftPanel.panelHide();
	}
	public function WelcomeMsgFAQEvent(e:MouseEvent):void {
		navigateToURL(new URLRequest("http://vkontakte.ru/club16470824"), "_blank");
		
	}
	public function WelcomeMsgAutoEvent(e:MouseEvent):void {
		removeChild(WelcomeMsgSprite);
		autoTeamHelper.start();
	}
	public function WelcomeMsgFAQOverEvent(e:MouseEvent):void {
		WelcomeMsgFAQ.setColor("0x333333");
		WelcomeMsgButtonSprite.alpha = 1;
	}
	public function WelcomeMsgFAQOutEvent(e:MouseEvent):void {
		WelcomeMsgFAQ.setColor("0x003366");
		WelcomeMsgButtonSprite.alpha = 0.2;
	}
	public function WelcomeMsgAutoOverEvent(e:MouseEvent):void {
		WelcomeMsgAuto.setColor("0x333333");
		WelcomeMsgButton3Sprite.alpha = 1;
	}
	public function WelcomeMsgAutoOutEvent(e:MouseEvent):void {
		WelcomeMsgAuto.setColor("0x003366");
		WelcomeMsgButton3Sprite.alpha = 0.2;
	}
	public function WelcomeMsgCloseOverEvent(e:MouseEvent):void {
		WelcomeMsgClose.setColor("0x333333");
		WelcomeMsgButton2Sprite.alpha = 1;
	}
	public function WelcomeMsgCloseOutEvent(e:MouseEvent):void {
		WelcomeMsgClose.setColor("0x003366");
		WelcomeMsgButton2Sprite.alpha = 0.2;
	}
	
	public function showMan():void {
		myTimer.start();
	}
	private function timerEvent(e:TimerEvent):void {
		WelcomeMsgSprite.alpha += 0.07;
	}
	}
	
}