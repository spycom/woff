package data {
	import flash.display.*;
	import data.text;
	import flash.events.*;	
	import flash.net.*;
	import flash.filters.DropShadowFilter;

	public class firstManualHint extends Sprite {

private var WelcomeMsgSprite:Sprite;	
private var WelcomeMsgText:text;
private var WelcomeMsgFon:Loader;
private var WelcomeMsgClose:text;
private var WelcomeMsgFAQ:text;
private var myShadow:DropShadowFilter;

		public function firstManualHint () {
			
			myShadow = new DropShadowFilter();
			
			WelcomeMsgSprite = new Sprite();
			WelcomeMsgSprite.x = 80;
			WelcomeMsgSprite.y = 170;
			WelcomeMsgSprite.filters = [myShadow];
			
			WelcomeMsgText = new text(8, 6, "error", "2");
			
			WelcomeMsgClose = new text(400, 120, " < ЗАКРЫТЬ >", "12");
			WelcomeMsgClose.addEventListener(MouseEvent.CLICK, WelcomeMsgCloseEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgCloseOverEvent);
			WelcomeMsgClose.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgCloseOutEvent);
			
			WelcomeMsgFAQ = new text(432, 100, "группе приложения", "12");
			WelcomeMsgFAQ.setColor("0x000033");
			WelcomeMsgFAQ.addEventListener(MouseEvent.CLICK, WelcomeMsgFAQEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgFAQOverEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgFAQOutEvent);
			
			WelcomeMsgFon = new Loader();
			WelcomeMsgFon.load(new URLRequest("http://woff73.valuehost.ru/woff_images/img5/profile.png"));
			WelcomeMsgFon.scaleX = 1.3;
			WelcomeMsgFon.scaleY = 0.83;
		
			addChild(WelcomeMsgSprite);
					WelcomeMsgText.setText("		Четыре шага успешного игрока: " +
					"\n- Для начала Вам необходимо собрать команду из 15 футболистов. Нажимайте на стрелочки\n	рядом с серыми футболками и выбирайте игроков соответствующего амплуа."+
					"\n- В закладке 'главная' Вы можете ввести название своей команды и выбрать любимый футбольный клуб." +
					"\n- Возможно у Вас есть заносчивые друзья, которые считают что разбираются в футболе лучше чем Вы! \n	Пригласите их в игру из вкладки 'Лига друзей' и докажите что они жестоко ошибаются."+
					"\n- Ну и наконец самое приятное - следите за реальным развитием турниров. \n	Проводите замены в вашей команде, принимайте учатие в обсуждениях в     \n и общайтесь с другими игроками."+
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
	
	}
	
}