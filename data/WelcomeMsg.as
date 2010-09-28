package data {
	import flash.display.*;
	import data.text;
	import flash.events.*;	
	import flash.net.*;
	import flash.filters.DropShadowFilter;

	public class WelcomeMsg extends Sprite {

private var WelcomeMsgSprite:Sprite;	
private var WelcomeMsgText:text;
private var WelcomeMsgFon:Loader;
private var WelcomeMsgClose:text;
private var WelcomeMsgFAQ:text;
private var myShadow:DropShadowFilter;

		public function WelcomeMsg() {
			
			myShadow = new DropShadowFilter();
			
			WelcomeMsgSprite = new Sprite();
			WelcomeMsgSprite.x = 80;
			WelcomeMsgSprite.y = 170;
			WelcomeMsgSprite.filters = [myShadow];
			
			WelcomeMsgText = new text(8, 6, "error", "2");
			
			WelcomeMsgClose = new text(388, 116, "ЗАКРЫТЬ", "12");
			WelcomeMsgClose.addEventListener(MouseEvent.CLICK, WelcomeMsgCloseEvent);
			
			WelcomeMsgFAQ = new text(442, 59, "FAQ", "12");
			WelcomeMsgFAQ.addEventListener(MouseEvent.CLICK, WelcomeMsgFAQEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OVER, WelcomeMsgFAQOverEvent);
			WelcomeMsgFAQ.addEventListener(MouseEvent.MOUSE_OUT, WelcomeMsgFAQOutEvent);
			
			WelcomeMsgFon = new Loader();
			WelcomeMsgFon.load(new URLRequest("http://woff73.valuehost.ru/woff_images/img5/profile.png"));
			WelcomeMsgFon.scaleX = 1.3;
			WelcomeMsgFon.scaleY = 0.83;
		
			addChild(WelcomeMsgSprite);
					WelcomeMsgText.setText("		Приветствуем Вас в нашей игре! " +
					"\nВ ней Вы сможете доказать своим друзьям и всему <<контакту>>, кто лучше всех разбирается в футболе."+
					"\nНабирайте команды из 15 реальных футболистов и в бой! Мы предлагаем вам целый МИР Fantasy Football." +
					"\nЗаявляйте команды в ведущих европейские турнирах и конечно же Российской Премьер Лиге. "+
					"\nНе забывайте, что у нашей игры тоже есть правила. Рекомендумаем начать вам с раздела ____"+
					"\nИ пускай на мировом фоне, Fantasy Football в России только набирает популярность, мы верим что"+
					"\nигра и 'МИР' в целом придутся Вам по душе, не даром мы выбрали девиз 'Fantasy World for Fantastic Game'");
					
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
	
	}
	
}