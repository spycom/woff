package data {
	import flash.display.*;
	import flash.events.*;
	import flash.net.*;
	import data.text;
	
	public class Ads extends Sprite{
	
	private var answer:XML;
	private var answer_txt:text;
	private var title1:text;
	private var description1:text;
	private var link1:String;
	
	private var title2:text;
	private var description2:text;
	private var link2:String;
	
	private var title3:text;
	private var description3:text;
	private var link3:String;
			
		public function Ads(viewer_id:int) {
			
			var api_id:String = "1848099";
			var api_secret:String = 'DuIP8H5HnE';
			var test_mode:Number = 0;
			
			var methodFromAPI:String = "getAds";
			var ads_type:int = 3;
			var ads_count:int = 3;
			
			var _sig:String = viewer_id + 'api_id='+api_id+'count='+ads_count+'method='+methodFromAPI+'test_mode='+test_mode+'type='+ads_type+'v=2.0'+ api_secret;
			var sig:String = MD5.encrypt(_sig); // используем метод hash класса md5 и получаем сигнатуру
		
			var request:URLRequest = new URLRequest("http://api.vkontakte.ru/api.php");
  				request.method = URLRequestMethod.POST;
  		
  			var v:URLVariables = new URLVariables();
  			v.api_id = api_id;
			v.v = "2.0"; // Версия АПИ
			v.method = methodFromAPI;
			v.type = ads_type;
			v.count = ads_count;
			v.test_mode = test_mode;
			v.sig = sig;
			//v.fields = "photo";
	
   			request.data = v;
          
			var loader:URLLoader = new URLLoader();
			loader.dataFormat = URLLoaderDataFormat.TEXT;
			loader.addEventListener(Event.COMPLETE, loadVkAdsComplete);
			loader.load(request);
		}	
		
		public function loadVkAdsComplete(e:Event):void {
			
			var welcome_txt:text = new text(300, -8, "Если вы хотите поддержать приложение, кликините пожалуйста на рекламе", "ads_well");
				addChild(welcome_txt);
			
			answer= new XML(e.target.data);
			answer.ignoreWhite = true;
			
			title1 = new text(90,10, answer.ad[1].title.text(), "ads_txt");
				addChild(title1);
			description1 = new text(90,30, answer.ad[1].description.text(), "ads_txt");
				addChild(description1);
			link1 = new String(answer.ad[1].link.text());
				title1.addEventListener(MouseEvent.CLICK, Ad1Click);
				description1.addEventListener(MouseEvent.CLICK, Ad1Click);
				
			var photo:Loader = new Loader();
			photo.addEventListener(MouseEvent.CLICK, Ad1Click);
			photo.load(new URLRequest(answer.ad[1].photo.text()));
			photo.x = 10;
			photo.y = 10;
				addChild(photo);
				
			title2 = new text(300,10, answer.ad[0].title.text(), "ads_txt");
				addChild(title2);
			description2 = new text(300,30, answer.ad[0].description.text(), "ads_txt");
				addChild(description2);
			link2 = new String(answer.ad[0].link.text());
				title2.addEventListener(MouseEvent.CLICK, Ad2Click);
				description2.addEventListener(MouseEvent.CLICK, Ad2Click);
				
			var photo2:Loader = new Loader();
			photo2.addEventListener(MouseEvent.CLICK, Ad2Click);
			photo2.load(new URLRequest(answer.ad[0].photo.text()));
			photo2.x = 220;
			photo2.y = 10;
				addChild(photo2);
				
			title3 = new text(500,10, answer.ad[2].title.text(), "ads_txt");
				addChild(title3);
			description3 = new text(500,30, answer.ad[2].description.text(), "ads_txt");
				addChild(description3);
			link3 = new String(answer.ad[2].link.text());
				title3.addEventListener(MouseEvent.CLICK, Ad3Click);
				description3.addEventListener(MouseEvent.CLICK, Ad3Click);
				
			var photo3:Loader = new Loader();
			photo3.addEventListener(MouseEvent.CLICK, Ad3Click);
			photo3.load(new URLRequest(answer.ad[2].photo.text()));
			photo3.x = 420;
			photo3.y = 10;
				addChild(photo3);
		}
			
		public function Ad1Click(e:MouseEvent):void {
			navigateToURL(new URLRequest(link1), "_blank");
		}
		public function Ad2Click(e:MouseEvent):void {
			navigateToURL(new URLRequest(link2), "_blank");
		}
		public function Ad3Click(e:MouseEvent):void {
			navigateToURL(new URLRequest(link3), "_blank");
		}
	}
}